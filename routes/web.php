<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// Home
Route::get('/', function () {
    return view('welcome');
});

// Admin
Route::get('search', 'AdminController@search')->name('admin.search');




Route::resource('roles', 'RoleController');

Route::get('/login', 'LoginController@index')->name('dang_nhap');
Route::post('/login', 'LoginController@postlogin')->name('postlogin');
Route::get('/logout', 'LoginController@logout')->name('dang_xuat');


// Gom nhóm route trang admin . thêm tiền tố admin cho mỗi url
Route::group(['prefix' => 'admin' , 'middleware' => 'checkLogin', 'as' => 'admin.'], function () {
    Route::get('user_page', 'AdminController@user_page')->name('admin.user_page');
    Route::get('', 'AdminController@index')->name('dashboard');
    Route::resource('banner', 'BannerController');
    Route::resource('order', 'OrderController'); // order
    Route::resource('category', 'CategoryController'); // Nhà cung cấp
    Route::resource('product', 'ProductController'); // San Pham
    Route::resource('article', 'ArticleController'); // bai viet
    Route::resource('setting', 'SettingController'); // bai viet
    Route::resource('contact', 'ContactController'); // bai viet
    Route::resource('user', 'UserController'); // bai viet
    Route::post('order/remove-to-cart', 'OrderController@removeToCart')->name('order.remove'); // Ql Đơn hàng
    Route::resource('order', 'OrderController');
    Route::resource('pro_image', 'Pro_imageController');
});
// Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
//đánh giá sp
Route::get('/danh-gia', 'RatingController@postPost');
Route::get('/show', 'ShopController@showPost');

Route::get('/', 'ShopController@index')->name('home');
Route::get('/tim-kiem', 'ShopController@search')->name('shop.search');
Route::get('/lien-he', 'ShopController@contact')->name('shop.contact');
Route::post('/lien-he', 'ShopController@postcontact')->name('shop.postcontact');
Route::get('/bai-viet', 'ShopController@getArticle')->name('shop.article');
Route::get('/dat-hang', 'CartController@index')->name('shop.cart');
//chi tiet sp
Route::get('/chi-tiet-sp/{slug}/id={id}', 'ShopController@getDetailProduct')->name('shop.detailProduct');

//chi tiet bai viet
Route::get('/chi-tiet-bai-viet/{slug}', 'ShopController@detailArticle')->name('shop.detailArticle');

// Thêm sản phẩm vào giỏ hàng
Route::get('/dat-hang/them-sp-vao-gio-hang/{id}', 'CartController@addToCart')->name('shop.cart.add-to-cart');
// Xóa SP khỏi giỏ hàng
Route::get('/dat-hang/xoa-sp-gio-hang/{id}', 'CartController@removeToCart')->name('shop.cart.remove-to-cart');

// Cập nhật giỏ hàng
Route::get('/dat-hang/cap-nhat-gio-hang', 'CartController@updateToCart')->name('shop.cart.update-to-cart');

// Áp dụng giảm giá
Route::get('/dat-hang/ma-giam-gia', 'CartController@checkCoupon')->name('shop.cart.check-coupon');

// Hủy đơn hàng
Route::get('/dat-hang/huy-don-hang', 'CartController@destroy')->name('shop.cart.destroy');

// Thanh toán
Route::get('/thanh-toan', 'CartController@checkout')->name('shop.cart.checkout');

Route::post('/thanh-toan', 'CartController@postCheckout')->name('shop.cart.checkout');
//san pham theo danh muc

//Auth::routes();
//
//Route::get('/home', 'HomeController@index')->name('home');

Route::get('/{slug}', 'ShopController@getProductsByCategory')->name('shop.products_by_category');
