<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use  Cart;
use Illuminate\Support\Facades\Cookie;
use Session;

class CheckOutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function checkout()
    {
          $items = \Cart::getContent();
        $data['share_picture']=get_option('home_share_image');

        $data['seo_title']=get_option('home_seo_title');
        $data['seo_keywords']=get_option('home_seo_keywords');
        $data['seo_description']=get_option('home_seo_content');


        $data['categories']=DB::table('category')->select('category_id','category_title','category_name')->where('parent_id',0)->get();

        return view('website.checkout',$data);
    }
    public  function checkoutStore(Request $request){

        $user_id=Session::get('user_id');
        $usr_row=DB::table('users')->where('id','=',$user_id)->first();
       $wallet= $usr_row->wallet;
       if($wallet < $request->order_total){
           return redirect('/checkout')
               ->with('error', 'You have insufficient blance to order this product please  contact with admin');
       }

        $data['order_status'] ='new';
        $data['shipping_charge'] = $request->shipping_charge;
        $data['created_time'] = date("Y-m-d h:i:s");
        $data['created_by'] = 'Customer';
     //$data['modified_time'] = date("Y-m-d h:i:s");
        $data['order_date'] = date("Y-m-d");
        $data['order_total'] =$request->order_total;
        $data['products'] = serialize($request->products);
        $data['customer_name'] = $request->customer_name;
        $data['customer_phone'] = $request->customer_phone;
        $data['customer_email'] = $request->customer_email;
        $data['customer_address'] = $request->customer_address;
        $data['staff_id'] = 0;
         $data['payment_type'] = $request->payment_type;
        $data['order_area'] = $request->order_area;


        $data['user_id']=Session::get('user_id');

        $order_id=DB::table('order_data')->insertGetId($data);
        $row_data['order_id']= $order_id;
        if($order_id){

            $details = [
                'status' => 'New Order',
                'order_id' => $order_id
            ];
            Session::put('order_mail',$order_id);

            \Mail::to($request->customer_email)->send(new \App\Mail\MyTestMail($details));


            return  redirect('thank-you?order_id='.$order_id);
        } else {

            return redirect('/chechout')->with('error', 'Error to Create this order');
        }


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function thankYou(Request $request)
    {
        $items = \Cart::clear();

        $data['seo_title']=get_option('home_seo_title');
        $data['seo_keywords']=get_option('home_seo_keywords');
        $data['seo_description']=get_option('home_seo_content');

        $id= $request->order_id;
        $data['order']=DB::table('order_data')->where('order_id',$id)->first();
        $data['categories']=DB::table('category')->select('category_id','category_title','category_name')->where('parent_id',0)->get();
        $data['share_picture']=get_option('home_share_image');
        return view('website.thank_you',$data);



    }
    public function cart(){
        $data['share_picture']=get_option('home_share_image');

        $data['seo_title']=get_option('home_seo_title');
        $data['seo_keywords']=get_option('home_seo_keywords');
        $data['seo_description']=get_option('home_seo_content');
   /////     $data['order']=DB::table('order_data')->where('order_id',$id)->first();
    //    $data['categories']=DB::table('category')->select('category_id','category_title','category_name')->where('parent_id',0)->get();

        return view('website.cart',$data);

    }

    public  function  plus_cart_item(Request $request){
        if($request->ajax())
        {

            $product_id = $request->get('product_id');
            Cart::update($product_id, array(
                'quantity' => 1, // so if the current product has a quantity of 4, another 2 will be added so this will result to 6
            ));

            //  return view('website.category_ajax', compact('products'));
            $view = view('website.cart_ajax')->render();
            $items = \Cart::getContent();
            //Cart::clear();
            $total=0;
            $quantity=0;
            foreach($items as $row) {

                $total = \Cart::getTotal();
                $quantity +=$row->quantity;

            }
            $quantity= Cart::getContent()->count();
//        $data['total']=$total;
//        $data['count']=$quantity;
            $data1=[
                'total'=>$total,
                'count'=>$quantity,
            ];

           // return response()->json(['result'=>$data1]);

            return response()->json(['html'=>$view,'result'=>$data1]);
        }

    }

    public function minus_cart_item(Request $request){
        if($request->ajax())
        {

            $product_id = $request->get('product_id');
            Cart::update($product_id, array(
                'quantity' => -1, // so if the current product has a quantity of 4, another 2 will be added so this will result to 6
            ));

            //  return view('website.category_ajax', compact('products'));
            $view = view('website.cart_ajax')->render();

            $items = \Cart::getContent();
            //Cart::clear();
            $total=0;
            $quantity=0;
            foreach($items as $row) {

                $total = \Cart::getTotal();
                $quantity +=$row->quantity;

            }
            $quantity= Cart::getContent()->count();
//        $data['total']=$total;
//        $data['count']=$quantity;
            $data1=[
                'total'=>$total,
                'count'=>$quantity,
            ];

            // return response()->json(['result'=>$data1]);

            return response()->json(['html'=>$view,'result'=>$data1]);
        }

    }
    public function remove_cart_item(Request $request){
        if($request->ajax())
        {

            $product_id = $request->get('product_id');
            Cart::remove($product_id);
            //  return view('website.category_ajax', compact('products'));
            $view = view('website.cart_ajax')->render();

            $items = \Cart::getContent();
            //Cart::clear();
            $total=0;
            $quantity=0;
            foreach($items as $row) {

                $total = \Cart::getTotal();
                $quantity +=$row->quantity;

            }
            $quantity= Cart::getContent()->count();
//        $data['total']=$total;
//        $data['count']=$quantity;
            $data1=[
                'total'=>$total,
                'count'=>$quantity,
            ];

            // return response()->json(['result'=>$data1]);

            return response()->json(['html'=>$view,'result'=>$data1]);
        }

    }
    public function add_to_wishlist(Request $request)
    {
       // $request->session()->put('my_name','Virat Gandhi');
        $wishlist = array();
        $product_id=$request->product_id;
        if($request->session()->has('wishlist')){
           // $wishlist = $this->session->userdata('wishlist');
            $wishlist=$request->session()->get('wishlist');

        }
        array_push($wishlist, $product_id);

        $wishlist = array_unique($wishlist);

        $request->session()->put('wishlist', $wishlist);




    }

    public  function wishlist(Request $request){

        $wishlist=$request->session()->get('wishlist');

        if($request->session()->has('wishlist'))
        {
            $wishlist=$request->session()->get('wishlist');
            $data['products']=DB::table('product')->whereIn('product_id',$wishlist)->get();

        } else {
            $data['products']='';

        }

        $data['seo_title']=get_option('home_seo_title');
        $data['seo_keywords']=get_option('home_seo_keywords');
        $data['seo_description']=get_option('home_seo_content');
        $data['share_picture']=get_option('home_share_image');
        return view('website.wishlist',$data);


    }
    public function remove_wish_list(Request $request)
    {
        $wishlist = array();

        $product_id=$request->product_id;
        if($request->session()->has('wishlist')){
            // $wishlist = $this->session->userdata('wishlist');
            $wishlist=$request->session()->get('wishlist');

        }

            $key = array_search($product_id, $wishlist);

            unset($wishlist[$key]);

            $wishlist = array_values($wishlist);

            ///  $this->session->set_userdata('wishlist', $wishlist);
            $request->session()->put('wishlist', $wishlist);


        $products=DB::table('product')->whereIn('product_id',$wishlist)->get();

        $view = view('website.wishlist_ajax',compact('products'))->render();

        return response()->json(['html'=>$view]);


    }


     
}
