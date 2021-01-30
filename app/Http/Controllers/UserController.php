<?php

namespace App\Http\Controllers;

use App\Role;
use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = User::all(); // lấy toàn bộ dữ liệu
        // gọi đến view
        return view('admin.user.index', [
            'data' => $data // truyền dữ liệu sang view Index
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = Role::all();
        return view('admin.user.create', [
            'roles' => $roles,
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

        //validate
        $validatedData = $request->validate([
            'name' => 'bail|required|max:50',
            'email' => 'bail|required|email',
            'password' => 'bail|required|min:6',
            'image' => 'bail|mimes:jpeg,png,jpg,gif,svg|max:10000',
//            'fullname' => 'bail|required|max:255',
            'phone' => 'bail|required|numeric',
            'address' => 'bail|required|max:255',
            'CMND' => 'bail|required|numeric',
        ],[
            'name.required'=> 'Tài khoản đăng nhập không được để trống',
            'email.required'=> 'Email không được để trống',
            'password.required'=> 'Password tối thiểu 6 kí tự',
            'image.image'=> 'Ảnh không đúng định dạng',
            'fullname.required' => 'Tên người dùng không được để trống',
            'phone.required' => 'Số điện thoại phải là dạng số',
            'address.required' => 'Vui lòng nhập địa chỉ người dùng',
            'CMND.required' => 'Vui lòng nhập số chứng minh nhân dân'
        ]);



        $is_active = 0;
        if ($request->has('is_active')) { // kiem tra is_active co ton tai khong?
            $is_active = $request->input('is_active');
        }

        //luu vào csdl
        $user = new User();
        $user->name = $request->input('name'); // họ tên
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

            $user->image = $path_upload.$filename;
        }

        $user->email = $request->input('email'); // email
        $user->phone = $request->input('phone'); // email
        $user->address = $request->input('address'); // email
        $user->CMND = $request->input('CMND'); // email
        $user->gender = $request->input('gender');
        $user->password = bcrypt($request->input('password')); // mật khẩu
        $user->role_id = $request->input('role_id'); // phần quyền

        if ($request->hasFile('avatar')) {
            // get file
            $file = $request->file('avatar');
            // get ten
            $filename = time().'_'.$file->getClientOriginalName();
            // duong dan upload
            $path_upload = 'uploads/user/';
            // upload file
            $request->file('avatar')->move($path_upload,$filename);

            $user->avatar = $path_upload.$filename;
        }

        $user->is_active = $is_active;

//        dd($user);

        $user->save();

        // chuyen dieu huong trang
        return redirect()->route('admin.user.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
//        // get data from db
//        $data = User::findorFail($id);
//
//        return view('admin.user.show', [
//            'data' => $data,
//        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // Sử dụng hàm findorFail tìm kiếm theo Id, nếu tìm thấy sẽ trả về object , nếu không trả về lỗi
        $user = User::findorFail($id);

        return view('admin.user.edit', [
            'user' => $user
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
        $validatedData = $request->validate([
            'name' => 'bail|required|max:50',
            'email' => 'bail|required|email',
            'avatar' => 'bail|image|mimes:jpeg,png,jpg,gif,svg|max:10000',
            'phone' => 'bail|required|numeric',
            'address' => 'bail|required|max:255',
            'CMND' => 'bail|required|numeric',
        ],[
            'name.required'=> 'Tài khoản đăng nhập không được để trống',
            'email.required'=> 'Email không được để trống',
            'avatar.image'=> 'Ảnh không đúng định dạng',
            'phone.required' => 'Số điện thoại phải là dạng số',
            'address.required' => 'Vui lòng nhập địa chỉ người dùng',
            'CMND.required' => 'Vui lòng nhập số chứng minh nhân dân'
        ]);

        $user = User::findorFail($id);

        $is_active = 0;
        if ($request->has('is_active')) { // kiem tra is_active co ton tai khong?
            $is_active = $request->input('is_active');
        }

        //luu vào csdl
        $user->name = $request->input('name'); // họ tên
        if ($request->hasFile('image')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('image');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/product/';
            // Thực hiện upload file
            $request->file('image')->move($path_upload,$filename); // upload lên thư mục public/uploads/product

            $user->image = $path_upload.$filename;
        }
        $user->email = $request->input('email'); // email
        $user->phone = $request->input('phone'); // email
        $user->address = $request->input('address'); // email
        $user->CMND = $request->input('CMND'); // email
        $user->gender = $request->input('gender');
        $user->role_id = $request->input('role_id'); // phần quyền

        if ($request->input('new_password')) {
            $user->password = bcrypt($request->input('new_password')); // mật khẩu mới
        }

        if ($request->hasFile('new_avatar')) {
            // xóa file cũ
            @unlink(public_path($user->avatar)); // hàm unlink của PHP không phải laravel , chúng ta thêm @ đằng trước tránh bị lỗi
            // get file
            $file = $request->file('new_avatar');
            // get ten
            $filename = time().'_'.$file->getClientOriginalName();
            // duong dan upload
            $path_upload = 'uploads/user/';
            // upload file
            $request->file('new_avatar')->move($path_upload,$filename);

            $user->avatar = $path_upload.$filename;
        }

        $user->is_active = $is_active;
        $user->save();

        // chuyen dieu huong trang
        return redirect()->route('admin.user.index');
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
        User::destroy($id);

        // Trả về dữ liệu json và trạng thái kèm theo thành công là 200
        return response()->json([
            'status' => true
        ], 200);
    }
}
