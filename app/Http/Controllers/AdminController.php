<?php

namespace App\Http\Controllers;

use App\Article;
use App\Order;
use App\Product;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
class AdminController extends Controller
{
    public function index()
    {
        $numOrder = Order::count(); // đếm số đơn hàng
        $numArticle = Article::count(); // số bài viết
        $numProduct = Product::count(); // số sản phẩm
        $numUser = User::count(); // số người dùng

        $data = [
            'numOrder' => $numOrder,
            'numArticle' => $numArticle,
            'numProduct' => $numProduct,
            'numUser' => $numUser
        ];

        return view('admin.dashboard', $data);
    }

    public function search(Request $request)
    {
        // b1. Lấy từ khóa tìm kiếm
        $keyword = $request->input('tu-khoa');
        $slug = Str::slug($keyword);
        //$sql = "SELECT * FROM products WHERE is_active = 1 AND slug like '%$keyword%'";
        $products = Product::where([
            ['slug', 'like', '%' . $slug . '%'],
            ['is_active', '=', 1]
        ])->paginate(10);
        $totalResult = $products->total(); // số lượng kết quả tìm kiếm
        return view('admin.search', [
            'products' => $products,
            'totalResult' => $totalResult,
            'keyword' => $keyword ? $keyword : ''
        ]);

    }

    public function login()
    {
        return view('admin.login');
    }
}
