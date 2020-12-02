<?php

namespace App\Http\Controllers;

use App\Article;
use App\Category;
use App\Contact;
use App\Product;
use App\Rating;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use phpDocumentor\Reflection\Types\False_;

class ShopController extends GeneralController
{
    public function __construct()
    {
        parent::__construct();
    }
    // trang chủ
    public function index()
    {

        $list = []; // chứa danh sách sản phẩm  theo danh mục

        foreach($this->categories as $key => $parent) {

                $list[$key]['category'] = $parent; // điện thoại, tablet

                // SELECT * FROM `products` WHERE is_active = 1 AND is_hot = 0 AND category_id IN (1,7,9,11) ORDER BY id DESC LIMIT 10
                $list[$key]['products'] = Product::where('category_id' , $parent->id)

                    ->orderBy('id', 'desc')
                    ->latest()
                    ->paginate(5);


            }


        return view('shop.home',[
            'list' => $list
        ]);
    }
//lấy nhiều sản phẩm theo danh mục
    public function getProductsByCategory($slug)
    {
//
        $cate = Category::where('slug', $slug)->first();

            // step 2 : lấy list sản phẩm theo thể loại
            $list_Product = Product::where('category_id',$cate->id)
            ->get();

            return view('shop.products_by_category',[
                'category' => $cate,
                'product' => $list_Product,
            ]);
        }

//


    public function getDetailProduct($slug,$id)
    {

         //get chi tiet sp
        $product = Product::find($id);

        $rating = Rating::where([['product_id', '=', $id]])->get();

        $category = Category::find($product->category_id);

        return view('shop.detailProduct',[
            'category' => $category,
            'product' => $product,
            'is_detail' => 1,
            'rating' => $rating
        ]);

//
    }

    public function contact()
    {
        return view('shop.contact');
    }
    public function postcontact(Request $request)
    {
        //validate dữ liệu gửi từ form
        $request->validate([
            'name' => 'required|max:255',
        ], [
            'name.required' => 'Tên không được để trống',
        ]);

        //luu vào csdl
        $contact = new Contact();
        $contact->name = $request->input('name');
        $contact->phone = $request->input('phone');
        $contact->email = $request->input('email');
        $contact->content = $request->input('content');
        $contact->save();

        // chuyển về trang chủ
        return redirect('/');
    }

    public function getArticle()
    {
        $article = Article::latest()->paginate(6);

        return view('shop.article',
        [
            'article' => $article
        ]);
    }

    //chi tiết bài viết
    public function detailArticle($slug)
    {

        // get chi tiet sp
        $article = Article::where(['slug'=>$slug,'is_active'=>1])->first();


        return view('shop.detailArticle', [

            'article' => $article,
            'is_detail' => 1
        ]);

    }
    public function search(Request $request)
    {
        // b1. Lấy từ khóa tìm kiếm
        $keyword = $request->input('tu-khoa');
//            $slug = Str::slug($keyword);
            $products = Product::where([
//                ['slug', 'like', '%' . $slug . '%'],
            ['name','like','%'.$keyword.'%'],
                ['is_active', '=', 1]
            ])->paginate(2);

            $totalResult = $products->total(); // số lượng kết quả tìm kiếm

            return view('shop.search', [
                'products' => $products,
                'totalResult' => $totalResult,
                'keyword' => $keyword ? $keyword : ''
            ]);


    }





}

