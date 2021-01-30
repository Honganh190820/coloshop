<?php

namespace App\Http\Controllers;

use App\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $banner = Banner::latest()->paginate(20);

        return view('admin.banner.index', [
            'data' => $banner
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.banner.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//        validate dữ liệu
        $request->validate([
            'title' => 'required|max:255',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000'
        ], [
            'title.required' => 'Tên không được để trống',
            'image.image' => 'Ảnh không đúng định dạng'
        ]);

        //Khởi tạo Model và gán giá trị từ form cho những thuộc tính của đối tượng (cột trong CSDL)
        $banner = new Banner();
        $banner->title = $request->input('title'); // lấy dữ liệu từ Form
        $banner->slug = Str::slug($banner->title, '-');

        if ($request->hasFile('image')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('image');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/banner/';
            // Thực hiện upload file
            $file->move($path_upload,$filename);

            $banner->image = $path_upload.$filename;
        }

        // website
        $banner->url = $request->input('url');
        $banner->target = $request->input('target');
        $banner->type = $request->input('type');

        // Trạng thái
        if ($request->has('is_active')){//kiem tra is_active co ton tai khong?
            $banner->is_active = $request->input('is_active');
        }
        // Vị trí
        $banner->position = $request->input('position');
        $banner->description = $request->input('description');
        // Lưu
        $banner->user_id = Auth::id();
        $banner->save();

        // Chuyển hướng trang về trang danh sách
        return redirect()->route('admin.banner.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $banner = Banner::findorFail($id); // chi tiet san pham

        return view('admin.banner.edit', [
            'banner' => $banner,
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
    {
        //validate dữ liệu gửi từ form
        $request->validate([
            'title' => 'required|max:255',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000'
        ], [
            'title.required' => 'Tên không được để trống',
            'image.image' => 'Ảnh không đúng định dạng'
        ]);

        //luu vào csdl
        $banner = Banner::findorFail($id);
        $banner->title = $request->input('title');
        $banner->slug = Str::slug($request->input('title'));

        if ($request->hasFile('new_image')) {
            // xóa file cũ
            @unlink(public_path($banner->image));
            // get file mới
            $file = $request->file('new_image');
            // get tên
            $filename = time().'_'.$file->getClientOriginalName();
            // duong dan upload
            $path_upload = 'uploads/banner/';
            // upload file
            $request->file('new_image')->move($path_upload,$filename);

            $banner->image = $path_upload.$filename;
        }

        $is_active = 0;
        if ($request->has('is_active')) {//kiem tra is_active co ton tai khong?
            $is_active = $request->input('is_active');
        }

        $banner->is_active = $is_active;
        $banner->position = $request->input('position');
        $banner->save();

        // chuyen dieu huong trang
        return redirect()->route('admin.banner.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
