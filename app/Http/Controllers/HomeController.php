<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use  Cart;

use Illuminate\Support\Facades\Cookie;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public  function __construct()
    {



    }

    public function index()
    {

        $data['share_picture']=get_option('home_share_image');
        $data['seo_title']=get_option('home_seo_title');
        $data['seo_keywords']=get_option('home_seo_keywords');
        $data['seo_description']=get_option('home_seo_content');
        $data['categories']=DB::table('category')->select('medium_banner','category_title','category_name')->where('parent_id',0)->paginate(12);
     //   $data['products']=DB::table('product')->get();
        $data['sliders']=DB::table('homeslider')->select('homeslider_title','target_url','homeslider_picture','homeslider_text')->where('status',1)->get();
       return view('website.home',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function category($category_name)
    {



      //  $data['categories']=DB::table('category')->select('category_id','category_title','category_name')->where('parent_id',0)->get();
       // SELECT DISTINCT* FROM `product` join category on category.category_id=product_category_relation.category_id WHERE category.category_name='electronics-items' SELECT DISTINCT* FROM `product` join product_category_relation on product_category_relation.product_id=product.product_id join category on category.category_id=product_category_relation.category_id WHERE category.category_name='electronics-items'
       $data['products'] =DB::table('product')->select('discount_price','product_price','product_name','folder','feasured_image','sku','product_title','product.product_id')->join('product_category_relation','product_category_relation.product_id','=','product.product_id')->join('category','category.category_id','=','product_category_relation.category_id')->where('product.status','=',1)->where('category_name',$category_name)->orderBy('modified_time','DESC')->paginate(18);


       $category_row= DB::table('category')->select('share_image','category_title','seo_title','seo_keywords','seo_content')->where('category_name',$category_name)->first();

$data['category_name']=$category_name;
$data['page_title']=$category_row->category_title;
        $data['share_picture']=url('/').'/'.$category_row->share_image;

        $data['seo_title']=$category_row->seo_title;
        $data['seo_keywords']=$category_row->seo_keywords;
        $data['seo_description']=$category_row->seo_content;

        return view('website.category',$data);
     }
    public  function  ajax_category(Request $request){
        if($request->ajax())
        {

            $category_name = $request->get('category_name');
           // $query = str_replace(" ", "%", $query);
            $products =DB::table('product')->select('discount_price','product_price','product_name','folder','feasured_image','sku','product_title','product.product_id')->join('product_category_relation','product_category_relation.product_id','=','product.product_id')->join('category','category.category_id','=','product_category_relation.category_id')->where('product.status','=',1)->where('category_name',$category_name)->orderBy('modified_time','DESC')->paginate(18);

            //  return view('website.category_ajax', compact('products'));
            $view = view('website.category_ajax',compact('products'))->render();

            return response()->json(['html'=>$view]);
        }

    }
    public   function hot_home_product(){
        $data['products']=DB::table('product')->where('status','=',1)->orderBy('modified_time','desc')->get();
        $view = view('website.hot_home_ajax_product',$data)->render();
        return response()->json(['html'=>$view]);
    }
    public function home_page_category_ajax(){
       // $data['products']=DB::table('product')->get();
        $view = view('website.home_page_ajax_category')->render();
        return response()->json(['html'=>$view]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function product($product_name)
    {
       // $data['categories']=DB::table('category')->select('category_id','category_title','category_name')->where('parent_id',0)->get();
        $data['product']=DB::table('product')->select('*')->where('product_name',$product_name)->first();
        if( $data['product']) {

            $category_row = DB::table('product')->select('category_title', 'category_name')->join('product_category_relation', 'product_category_relation.product_id', '=', 'product.product_id')->join('category', 'category.category_id', '=', 'product_category_relation.category_id')->where('product_name', $product_name)->orderBy('category.category_id', 'DESC')->first();
            $data['page_title'] =  $data['product']->product_title;
            $data['seo_title'] =  $data['product']->seo_title;
            $data['seo_keywords'] =  $data['product']->seo_keywords;
            $data['seo_description'] =  $data['product']->seo_content;


            $data['share_picture']=url('/public/uploads/').'/'.$data['product']->folder.'/'. $data['product']->feasured_image;

            $data['category_name'] = $category_row->category_name;
            $data['category_title'] = $category_row->category_title;
            return view('website.product', $data);
        } else {
            $data['seo_title']=get_option('home_seo_title');
            $data['seo_keywords']=get_option('home_seo_keywords');
            $data['seo_description']=get_option('home_seo_content');
            $data['share_picture']=get_option('home_share_image');


            $data['page']=DB::table('page')->select('*')->where('page_link',$product_name)->first();
            if($data['page']) {
                return view('website.page', $data);
            } else {
                
                return redirect('/');
            }
            
        }
     }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function search_engine(Request $request)
    {
        $search_query = $request->search_query;



        $search_query = str_replace(" ", "%", $search_query);
        $data['products'] = DB::table('product')->select('product_title','folder','feasured_image','product_price','sku','discount_price', 'product_name')->where('status','=',1)->orderBy('modified_time','desc')->where('sku','LIKE','%'.$search_query.'%')
            ->orWhere('product_title','LIKE','%'.$search_query.'%')->paginate(10);
        $data['search_query']=$search_query;

        $view = view('website.search_engine',$data)->render();
        return response()->json(['html'=>$view]);



    }

    public  function search(Request $request){
        
         $data['seo_title']=get_option('home_seo_title');
        $data['seo_keywords']=get_option('home_seo_keywords');
        $data['seo_description']=get_option('home_seo_content');
        $search_query = $request->search;
        $data['share_picture']=get_option('home_share_image');
        $search_query = str_replace(" ", "%", $search_query);
        $data['products']= DB::table('product')->select('product_id','product_title','folder','feasured_image','product_price','sku','discount_price', 'product_name')->where('sku','LIKE','%'.$search_query.'%')
            ->orWhere('product_title','LIKE','%'.$search_query.'%')->get();
        if(count($data['products'])==1){
            $product_url=url('/product').'/'.$data['products'][0]->product_name;
          //  redirect($product_url;
            return redirect("$product_url");

        }
            return view('website.search', $data);

    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function track_order(Request $request)
    {
        
        
         $data['seo_title']=get_option('home_seo_title');
        $data['seo_keywords']=get_option('home_seo_keywords');
        $data['seo_description']=get_option('home_seo_content');
        
        
        if($request->mobile){
            $data['mobile']=$request->mobile;
           $data['order']= DB::table('order_data')->where('customer_phone',$request->mobile)->orderBy('order_id','desc')->first();

$data['mobile']=$request->mobile;

            return view('website.track_order_page',$data);
        } else {
            return view('website.track_order_page',$data);
        }
    }
    public function affiliate_check_controller($product_key = null, $user_id = null)
    {
        // $base=base_url
        
        $data['seo_title']=get_option('home_seo_title');
        $data['seo_keywords']=get_option('home_seo_keywords');
        $data['seo_description']=get_option('home_seo_content');


        $link = url('/').'/' . $product_key . "/" . $user_id;
       $link_row= DB::table('product_link_info')->where('product_link',$link)->first();


        $unique_number = (mt_rand(10000, 999999));
        $unique_number=$unique_number.$link_row->id;
         

//        set_cookie('unique_code',$unique_number,$set_cookies);
//        set_cookie('link_id',$result->id,$set_cookies);

        Cookie::queue('unique_code', $unique_number, 10);
        Cookie::queue('link_id', $link_row->id, 10);


        $product_row= DB::table('product')->select('product_id')->where('product_name',$product_key)->first();
        $data = array(
            'user_id' => $user_id,
            'product_id' => $product_row->product_id,
            'unique_number' => $unique_number,
            'hit_date' => date('Y-m-d')
        );

        DB::table('product_hit_count')->insert($data);

        $get_link = url('/'). "/" . $product_key;

       return  redirect($get_link);
    }

}
