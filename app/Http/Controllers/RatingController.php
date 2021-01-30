<?php

namespace App\Http\Controllers;

use App\Rating;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
class RatingController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
    }
    // xử lý rating
    public function postPost(Request $request)
    {

        $post = new Rating();
        $post ->name = $request->get('name');
        $post ->ra_number = $request->get('ra_number');
        $post ->email = $request->get('email');
        $post ->phone = $request->get('phone');
        $post ->message = $request->get('message');
        $post ->product_id = $request->get('id_product');
        $post ->save();

        return response('oke');
    }


}
