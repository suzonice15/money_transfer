<?php $__env->startSection('mainContent'); ?>

    <div class="body-content outer-top-xs" id="top-banner-and-menu" >
        <div class="container-fluid">
            <div class="row">

                <!-- SIDEBAR : END  -->
                <!-- CONTENT -->
                <div class="col-xs-12 col-sm-12 col-md-12 homebanner-holder">
                    <!-- SECTION – HERO -->
                    <div id="hero">
                        <div id="owl-main" style="mar" class="owl-carousel owl-inner-nav owl-ui-sm">
                            <?php if($sliders): ?>
                                <?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="item"
                                         style="background-image: url(<?php echo e(url('public/uploads/sliders')); ?>/<?php echo e($slider->homeslider_picture); ?>);border-radius: 8px">
                                        <div class="container-fluid">
                                            <div class="caption bg-color vertical-center text-left">


                                                <div class="big-text fadeInDown-1">
                                                    <?php echo e($slider->homeslider_title); ?>

                                                </div>
                                                <div class="excerpt fadeInDown-2 hidden-xs">
                                                    <span>   <?php echo e($slider->homeslider_text); ?></span>
                                                </div>
                                                <div class="button-holder fadeInDown-3">
                                                    <a href="<?php echo e($slider->target_url); ?>"
                                                       class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
                                                        Now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                        </div>
                    </div>
                    <!-- INFO BOXES  -->

                    <div class="info-boxes wow ">
                        <div class="info-boxes-inner">
                            <div class="row">
                                <div class="col-md-4 col-sm-4 col-xs-4   col-lg-4">
                                    <div class="info-box">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <h6 class="info-box-heading green">Delivery </h6>
                                            </div>
                                        </div>
                                        <h6 class="text">One Day Inside Dhaka</h6>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4  col-lg-4">
                                    <div class="info-box">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <h6 class="info-box-heading green">free shipping</h6>
                                            </div>
                                        </div>
                                        <h6 class="text">Shipping on orders over 2,000</h6>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4 col-lg-4">
                                    <div class="info-box">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <h6 class="info-box-heading green">Upto 50% off </h6>
                                            </div>
                                        </div>
                                        <h6 class="text">On all products</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--  SCROLL TABS  -->

                    <!--  WIDE PRODUCTS  -->

                    <!-- FEATURED PRODUCTS  -->


                    <div class="container-fluid" style="background-color: white;">
                        <div class="row" style="margin-top: 21px;">

                            <?php

                            if($categories){
                                foreach ($categories as $category) {

                            if(empty($category->medium_banner)){
                                $image='https://www.dhakabaazar.com/uploads/nova-black-berry-moving-room-fan-heater-35643564-min_thumb.png';
                            } else {
                                $image=url('public/uploads/category').'/'.$category->medium_banner;
                            }
                            ?>
                            <div class="col-md-1 col-sm-3 col-xs-3">
                                <a
                                   href="<?php echo e(url('category/')); ?>/<?php echo e($category->category_name); ?>">
                                    <img class="img-responsive"
                                         src="<?php echo e($image); ?>">
                                    <p style="padding: 3px 4px; text-align: center;"><?php echo e($category->category_title); ?></p>
                                </a>
                            </div>

                            <?php } } ?>
                    </div>
                    </div>

                    <?php


                    $home_cat = explode(",", get_option('home_cat_section'));
                    //   $home_cat_section= array_key_first($home_cat_section);
                    $home_cat_section = reset($home_cat);

                    if($home_cat_section){

                    //  $category_id=$category->category_id;
                    $category_info = get_category_info($home_cat_section);


                    $products = DB::table('product')->select('product.product_id', 'product_title', 'product_name', 'discount_price', 'product_price', 'folder', 'feasured_image', 'sku')->join('product_category_relation', 'product.product_id', '=', 'product_category_relation.product_id')
                        ->where('product_category_relation.category_id', $home_cat_section)->where('status','=',1)->orderBy('modified_time','desc')->paginate(10);
                    ?>
                    <section class="section featured-product wow ">
                        <h3 class="section-title"><a
                                class="category_title_section" href="<?php echo e(url('/')); ?>/category/<?php echo e($category_info->category_name); ?>"><?php echo e($category_info->category_title); ?></a>
                        </h3>
                        <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">

                            <?php


                            if($products){
                            foreach ($products as  $product){

                            if ($product->discount_price) {
                                $sell_price = $product->discount_price;
                            } else {
                                $sell_price = $product->product_price;
                            }
                            ?>
                            <div class="item item-carousel">
                                <div class="products">


                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="<?php echo e(url('/')); ?>/<?php echo e($product->product_name); ?>">
                                                    <img
                                                        src="<?php echo e(url('/public/uploads')); ?>/<?php echo e($product->folder); ?>/thumb/<?php echo e($product->feasured_image); ?>"
                                                        alt="">
                                                </a></div>

                                        </div>
                                        <div class="product-info text-left">
                                            <div class="product-price">
                                <span class="price">


                                  <?php echo '৳ ' . number_format($sell_price, 2); ?>
                                </span>
                                                <?php
                                                if($product->discount_price){


                                                ?>
                                                <span class="price-before-discount"
                                                      style="color:red">  <?php echo '৳ ' . number_format($product->product_price, 2); ?> </span>

                                                <?php


                                                }
                                                ?>
                                            </div>
                                            <p style="margin: -3px 1px;text-align:center"> Code:<?php echo e($product->sku); ?></p>
                                            <h3 style="margin-top: 2px;margin-bottom: -2px;" class="name">
                                                <a href="<?php echo e(url('/')); ?>/<?php echo e($product->product_name); ?>">

                                                    <?php echo e($product->product_title); ?>

                                                </a>
                                            </h3>
                                        </div>



































                                    </div>


                                </div>
                            </div>
                            <?php } } ?>


                        </div>
                    </section>

                    <?php


                    }


                    ?>

                    <span class="home_page_category"></span>
                    <span id="hot_ajax_product"></span>


                </div>
            </div>

        </div>
    </div>


    <div class="container">
    <div class="row">
    <div class="col-md-6 col-sm-4 col-xs-4"></div>
        <div class="col-md-2 col-sm-4 col-xs-4">
            <hr/>
            <a href="<?php echo e(url('category')); ?>/all-products" class="btn btn-success"> See more</a>
            <hr/>
            <br>
        </div>
        <div class="col-md-4 col-xs-4  col-sm-4 "></div>
    </div>
    </div>

    <script>

        jQuery.ajax(
            {

                url: "<?php echo e(url('/home_page_category_ajax')); ?>",

                type: "get",


            })

            .done(function (data) {
                // console.log(data.html)
                if (data.html == " ") {


                }


                jQuery(".home_page_category").html(data.html);

                jQuery('.home-owl-carousel').each(function () {

                    var owl = $(this);
                    var itemPerLine = owl.data('item');

                    if (!itemPerLine) {
                        itemPerLine = 7;

                    }
                    owl.owlCarousel({
                        items: itemPerLine,
                        itemsTablet: [768, 2],
                        itemsDesktopSmall: [979, 2],
                        itemsDesktop: [1199, 2],
                        itemsMobile: [1199, 2],
                        navigation: true,
                        pagination: false,
                        autoPlay:true,

                        navigationText: ["", ""]
                    });
                });

            })

            .fail(function (jqXHR, ajaxOptions, thrownError) {



            });
    </script>
    <script>

        jQuery.ajax(
            {

                url: "<?php echo e(url('/hot_home_product')); ?>",

                type: "get",


            })

            .done(function (data) {
                // console.log(data.html)
                if (data.html == " ") {


                }


                jQuery("#hot_ajax_product").html(data.html);
                jQuery(".best-seller").owlCarousel({
                    items: 4,
                    navigation: true,
                    itemsDesktopSmall: [979, 2],
                    itemsDesktop: [1199, 2],
                    slideSpeed: 300,
                    pagination: false,
                    paginationSpeed: 400,
                    navigationText: ["", ""]
                });


            })

            .fail(function (jqXHR, ajaxOptions, thrownError) {


            });
    </script>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('website.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rsohojjp/public_html/resources/views/website/home.blade.php ENDPATH**/ ?>