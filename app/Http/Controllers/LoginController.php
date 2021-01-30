<?php
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
class LoginController extends Controller
{
    public function index()
    {
        return view('admin.login');
    }

    public function postlogin(Request $request)
    {


        if (auth()->attempt(['email'=>$request->email,'password'=>$request->password]))
        {
            return redirect()->route('admin.dashboard');
        }else{
            return redirect()->route('dang_nhap');
        }
    }
    public function logout()
    {
        auth()->logout();
        return redirect()->route('dang_nhap');
    }
}
