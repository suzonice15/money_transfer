<?php

use Illuminate\Support\Facades\Route;

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
Route::get('/', 'HomeController@index');
Route::get('/category/{id}', 'HomeController@category');
Route::get('ajax_category', 'HomeController@ajax_category');
//Route::get('/product/{id}', 'HomeController@product');
Route::get('/search_engine', 'HomeController@search_engine');
Route::get('/search', 'HomeController@search');
Route::get('/hot_home_product', 'HomeController@hot_home_product');
Route::get('/home_page_category_ajax', 'HomeController@home_page_category_ajax');
Route::get('/add-to-cart', 'AjaxController@add_to_cart');
Route::get('/related/product', 'AjaxController@relatedProduct');
Route::get('/hotdeal/product', 'AjaxController@hotdealProduct');
Route::get('track-your-order', 'HomeController@track_order');
Route::post('track-your-order', 'HomeController@track_order');
Route::post('/add_to_review', 'AjaxController@add_to_review');


/*            cart           */
Route::get('/thank-you', 'CheckOutController@thankYou');
Route::get('/cart', 'CheckOutController@cart');
Route::get('/plus_cart_item', 'CheckOutController@plus_cart_item');
Route::get('/minus_cart_item', 'CheckOutController@minus_cart_item');
Route::get('/remove_cart_item', 'CheckOutController@remove_cart_item');
Route::get('/add-to-wishlist', 'CheckOutController@add_to_wishlist');
Route::get('/wishlist', 'CheckOutController@wishlist');
Route::get('/remove-to-wishlist', 'CheckOutController@remove_wish_list');
Route::get('/checkout', 'CheckOutController@checkout');
Route::post('/chechout', 'CheckOutController@checkoutStore');

Route::get('/admin', 'admin\AdminController@login');
Route::post('/login_check', 'admin\AdminController@loginCheck');
Route::get('/sohoj-admin-login', 'admin\AdminController@sohoj_admin');
Route::get('/dashboard', 'admin\DashboardController@index');


/****=============== admin section    =====================  ******/

Route::get('admin/users', 'admin\AdminController@index');
Route::get('admin/customers', 'admin\AdminController@customers');
Route::get('admin/user/create', 'admin\AdminController@create');
Route::post('admin/user/store', 'admin\AdminController@store');
Route::post('admin/user/update/{id}', 'admin\AdminController@update');
Route::post('admin/customers/update/{id}', 'admin\AdminController@customers_update');
Route::get('admin/user/{id}', 'admin\AdminController@edit');
Route::get('/admin/customers/edit/{id}', 'admin\AdminController@customers_edit');
Route::get('/admin/user/delete/{id}', 'admin\AdminController@delete');
Route::get('admin/customers/delete/{id}', 'admin\AdminController@customers_delete');
Route::get('logout', 'admin\AdminController@logout');
Route::get('customers/pagination', 'admin\AdminController@customers_pagination');
Route::get('customers/transaction', 'admin\AdminController@transaction');
Route::get('customers/transaction/pagination', 'admin\AdminController@transaction_pagination');

/****=============== category section    =====================  ******/
Route::get('admin/categories', 'admin\CategoryController@index');
Route::post('category-urlcheck', 'admin\CategoryController@urlCheck');
Route::get('admin/category/create', 'admin\CategoryController@create');
Route::post('admin/category/store', 'admin\CategoryController@store');
Route::post('admin/category/update/{id}', 'admin\CategoryController@update');
Route::get('admin/category/{id}', 'admin\CategoryController@edit');
Route::get('/admin/category/delete/{id}', 'admin\CategoryController@delete');
Route::get('category/pagination/fetch_data', 'admin\CategoryController@fetch_data');


/****=============== admin page section    =====================  ******/
Route::get('admin/pages', 'admin\PageController@index');
 Route::get('admin/page/create', 'admin\PageController@create');
Route::post('admin/page/store', 'admin\PageController@store');
Route::post('admin/page/update/{id}', 'admin\PageController@update');
Route::get('admin/page/{id}', 'admin\PageController@edit');
Route::get('/admin/page/delete/{id}', 'admin\PageController@delete');


/****=============== home page setting section    =====================  ******/
Route::get('admin/homepage/setting', 'admin\SettingController@homePageSetting');
Route::post('admin/homepage/setting', 'admin\SettingController@homePageSetting');

Route::get('admin/default/setting', 'admin\SettingController@defaultSetting');
Route::post('admin/default/setting', 'admin\SettingController@defaultSetting');
Route::get('admin/social/setting', 'admin\SettingController@socialSetting');
Route::post('admin/social/setting', 'admin\SettingController@socialSetting');



/****=============== product section    =====================  ******/
Route::get('admin/products', 'admin\ProductController@index');
Route::post('product-urlcheck', 'admin\ProductController@urlCheck')->name('product.urlcheck');
Route::post('product-foldercheck', 'admin\ProductController@foldercheck')->name('product.foldercheck');
Route::get('admin/product/create', 'admin\ProductController@create');
Route::post('admin/product/store', 'admin\ProductController@store');
Route::post('admin/product/update/{id}', 'admin\ProductController@update');
Route::get('/admin/product/{id}', 'admin\ProductController@edit');
Route::get('/admin/product/delete/{id}', 'admin\ProductController@destroy');
Route::get('products/pagination', 'admin\ProductController@pagination');


/****=============== Order section    =====================  ******/
Route::get('admin/orders', 'admin\OrderController@index');
Route::get('admin/order/create', 'admin\OrderController@create');
Route::post('admin/order/store', 'admin\OrderController@store');
Route::post('admin/order/update/{id}', 'admin\OrderController@update');
Route::get('admin/order/{id}', 'admin\OrderController@edit');
Route::get('admin/order/paid/{order_id}/{user_id}/{amount}', 'admin\OrderController@paid');
Route::get('admin/order/cancel/{order_id}/{user_id}/{amount}', 'admin\OrderController@cancel');
 Route::get('/admin/order/delete/{id}', 'admin\OrderController@destroy');
Route::get('order/pagination', 'admin\OrderController@pagination');
Route::post('order/product/selection/change', 'admin\AjaxOrderControlller@productSelectionChange')->name('productSelectionChange');
Route::post('order/product/selection', 'admin\AjaxOrderControlller@productSelection')->name('productSelection');



/**************************** Order report          **************************/

Route::get('admin/report/order_report', 'admin\ReportController@order_report');
Route::post('admin/report/order_report', 'admin\ReportController@order_report_by_ajax');


/****=============== media section    =====================  ******/
Route::get('admin/media', 'admin\MediaController@index');
Route::get('admin/media/create', 'admin\MediaController@create');
Route::post('admin/media/store', 'admin\MediaController@store');
Route::get('/admin/media/delete/{id}', 'admin\MediaController@destroy');
Route::get('media/pagination', 'admin\MediaController@pagination');
Route::get('media/pagination/fetch_data', 'admin\MediaController@pagination');

/****=============== courier section    =====================  ******/
Route::get('admin/couriers', 'admin\CourierController@index');
 Route::get('admin/courier/create', 'admin\CourierController@create');
Route::post('admin/courier/store', 'admin\CourierController@store');
Route::post('admin/courier/update/{id}', 'admin\CourierController@update');
Route::get('admin/courier/{id}', 'admin\CourierController@edit');
Route::get('/admin/courier/delete/{id}', 'admin\CourierController@delete');


/****=============== media section    =====================  ******/
Route::get('admin/sliders', 'admin\SliderController@index');
Route::get('admin/slider/create', 'admin\SliderController@create');
Route::post('admin/slider/store', 'admin\SliderController@store');
Route::post('admin/slider/update/{id}', 'admin\SliderController@update');
Route::get('admin/slider/{id}', 'admin\SliderController@edit');
Route::get('/admin/slider/delete/{id}', 'admin\SliderController@destroy');

Route::get('/sohoj-admin-login', 'admin\AdminController@sohoj_admin');

/****=============== customer font section    =====================  ******/

Route::get('customer/login', 'CustomerController@login');
Route::get('customer/form', 'CustomerController@sign_up_form');
Route::post('customer/save', 'CustomerController@store');
Route::get('customer/logout', 'CustomerController@logout');
Route::post('customer/login', 'CustomerController@login_check');

Route::get('send-mail', function () {

    $details = [
        'title' => 'Mail from ItSolutionStuff.com',
        'body' => 'This is for testing email using smtp',
        'order_id' => 10
    ];

    \Mail::to('suzonice15@gmail.com')->send(new \App\Mail\MyTestMail($details));

    dd("Email is Sent.");
});
Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    return redirect('dashboard');
});
Route::get('/{id}', 'HomeController@product');
Route::get('/{name}/{id}', 'HomeController@affiliate_check_controller');


