<?php

namespace App\Http\Controllers;

use App\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $setting = Setting::first(); // chi tiet san pham

        return view('admin.setting.edit', [
            'setting' => $setting,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
            'company' => 'required|max:255',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000',
            'phone' => 'required|max:13',
            'address' => 'required',
            'email' => 'required|email',
            'content' => 'required',
        ], [
            'company.required' => 'Tên không được để trống',
            'image.image' => 'Ảnh không đúng định dạng',
            'phone.required' => 'Phone không được để trống',
            'address.required' => 'Địa chỉ không được để trống',
            'email.required' => 'Email không được để trống',
            'content.required' => 'Content không được để trống',
        ]);

        //luu vào csdl
        $setting = Setting::findorFail($id);
        $setting->company = $request->input('company');
        if ($request->hasFile('new_image')) {
            // xóa file cũ
            @unlink(public_path($setting->image));
            // get file mới
            $file = $request->file('new_image');
            // get tên
            $filename = time().'_'.$file->getClientOriginalName();
            // duong dan upload
            $path_upload = 'uploads/setting/';
            // upload file
            $request->file('new_image')->move($path_upload,$filename);

            $setting->image = $path_upload.$filename;
        }
        $setting->phone= $request->input('phone');
        $setting->address= $request->input('address');
        $setting->email= $request->input('email');
        $setting->content= $request->input('content');
        $setting->save();
        // chuyen dieu huong trang
        return redirect()->route('admin.setting.index');
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
