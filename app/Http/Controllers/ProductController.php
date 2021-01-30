<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::latest()->paginate(10);

        return view('admin.product.index', [
            'data' => $products
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();

        return view('admin.product.create', [
            'categories' => $categories,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//        validate dữ liệu gửi từ form
        $request->validate([
            'name' => 'required|max:255',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000',
            'summary' => 'required',
            'description' => 'required',
//            'stock'=>'requierd',
//            'price'=>'requier',
//            'category_id'=>'requierd',
//            'sku' => 'requierd'
        ], [
            'name.required' => 'Tên không được để trống',
            'image.image' => 'Ảnh không đúng định dạng',
            'summary.required' => 'Tóm tắt không được để trống',
            'description.required' => 'Mô tả không được để trống',
//            'stock.required' => 'Số lượng không được để trống',
//            'price.require' => 'Giá tiền không được để trống',
//            'category_id.required' => 'Bạn chưa chọn danh mục sản phẩm',
//            'sku.required' => 'Mã sản phẩm không được để trống'
        ]);

        $product = new Product(); // khởi tạo model
        $product->name = $request->input('name');
        $product->slug = Str::slug($request->input('name'));

        // Upload file
        if ($request->hasFile('image')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('image');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/product/';
            // Thực hiện upload file
            $request->file('image')->move($path_upload,$filename); // upload lên thư mục public/uploads/product

            $product->image = $path_upload.$filename;
        }
        if ($request->hasFile('image2')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('image2');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/product/';
            // Thực hiện upload file
            $request->file('image2')->move($path_upload,$filename); // upload lên thư mục public/uploads/product

            $product->image2 = $path_upload.$filename;
        }
        if ($request->hasFile('image3')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('image3');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/product/';
            // Thực hiện upload file
            $request->file('image3')->move($path_upload,$filename); // upload lên thư mục public/uploads/product

            $product->image3 = $path_upload.$filename;
        }
        $product->stock = $request->input('stock'); // số lượng
        $product->price = $request->input('price'); // gia ban
        $product->sale = $request->input('sale'); // gia khuyen mai
        $product->category_id = $request->input('category_id'); // the loai
        $product->sku = $request->input('sku'); // mã sku
        $product->position = $request->input('position'); // vt
        $product->url = $request->input('url'); // lien ket url

        // Trạng thái
        if ($request->has('is_active')){//kiem tra is_active co ton tai khong?
            $product->is_active = $request->input('is_active');
        }

        // Sản phẩm Hot
        if ($request->has('is_hot')){
            $product->is_hot = $request->input('is_active');
        }

        $product->summary = $request->input('summary');
        $product->description = $request->input('description');
        $product->user_id = Auth::id(); // lưu id ng tạo
        $product->save();

        // chuyển hướng đến trang
        return redirect()->route('admin.product.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // get data from db
        $data = Product::findorFail($id);
        $category_name = Category::where('id', $data->category_id)->first();

        return view('admin.product.show', [
            'data' => $data,
            'category_name' => $category_name
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::findorFail($id); // chi tiet san pham
        $categories = Category::all();

        return view('admin.product.edit', [
            'product' => $product,
            'categories' => $categories
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {//        validate dữ liệu gửi từ form
        $request->validate([
            'name' => 'required|max:255',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000',
            'summary' => 'required',
            'description' => 'required',
//            'stock'=>'requierd',
//            'price'=>'requierd',
//            'category_id'=>'requierd',
//            'sku' => 'requierd'
        ], [
            'name.required' => 'Tên không được để trống',
            'image.image' => 'Ảnh không đúng định dạng',
            'summary.required' => 'Tóm tắt không được để trống',
            'description.required' => 'Mô tả không được để trống',
//            'stock.required' => 'Số lượng không được để trống',
//            'price.required' => 'Giá tiền không được để trống',
//            'category_id.required' => 'Bạn chưa chọn danh mục sản phẩm',
//            'sku.required' => 'Mã sản phẩm không được để trống'
        ]);
        $product = Product::findorFail($id);; // khởi tạo model
        $product->name = $request->input('name');
        $product->slug = str_slug($request->input('name'));

        // Thay đổi ảnh
        if ($request->hasFile('new_image')) {
            // xóa file cũ
            @unlink(public_path($product->image));
            // get file mới
            $file = $request->file('new_image');
            // get tên
            $filename = time().'_'.$file->getClientOriginalName();
            // duong dan upload
            $path_upload = 'uploads/product/';
            // upload file
            $request->file('new_image')->move($path_upload,$filename);

            $product->image = $path_upload.$filename;
        }
        if ($request->hasFile('new_image2')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('new_image2');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/product/';
            // Thực hiện upload file
            $request->file('new_image2')->move($path_upload,$filename); // upload lên thư mục public/uploads/product

            $product->image2 = $path_upload.$filename;
        }
        if ($request->hasFile('new_image3')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('new_image3');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/product/';
            // Thực hiện upload file
            $request->file('new_image3')->move($path_upload,$filename); // upload lên thư mục public/uploads/product

            $product->image3 = $path_upload.$filename;
        }


        $product->stock = $request->input('stock'); // số lượng
        $product->price = $request->input('price');
        $product->sale = $request->input('sale');
        $product->category_id = $request->input('category_id');
        $product->sku = $request->input('sku');
        $product->position = $request->input('position');
        $product->url = $request->input('url');

        // Trạng thái
        if ($request->has('is_active')){//kiem tra is_active co ton tai khong?
            $product->is_active = $request->input('is_active');
        }

        // Sản phẩm Hot
        if ($request->has('is_hot')){
            $product->is_hot = $request->input('is_active');
        }

        $product->summary = $request->input('summary');
        $product->description = $request->input('description');
        $product->user_id = Auth::id(); // lưu id ng tạo
        $product->save();

        // chuyển hướng đến trang
        return redirect()->route('admin.product.index');
    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // gọi tới hàm destroy của laravel để xóa 1 object
        Product::destroy($id);

        // Trả về dữ liệu json và trạng thái kèm theo thành công là 200
        $dataResp = [
            'status' => true
        ];

        return response()->json($dataResp, 200);
    }
}
