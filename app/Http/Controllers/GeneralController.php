<?php

namespace App\Http\Controllers;
use App\Banner;
use App\Category;
use App\Setting;
use Illuminate\Http\Request;

class GeneralController extends Controller
{
    protected $categories;

    public function __construct()
    {
        // 1. Lấy dữ liệu - Danh mục, có trạng thái là hiển thị
        $categories = Category::where(['is_active' => 1])->get();

        $this->categories = $categories;

        // 2. Lấy dữ liệu - Banner
        $banners = Banner::where('is_active', 1)->orderBy('position', 'desc')->get();


        //4. cấu hình website
        $settings = Setting::first();

        // Chia sẻ dữ qua tất các layout
        view()->share([
//            'settings' => $settings,
            'categories' => $categories,
            'banners' => $banners,
            'setting' => $settings
        ]);
    }
    public function notfound()
    {
        return view('shop.notfound');
    }
}
