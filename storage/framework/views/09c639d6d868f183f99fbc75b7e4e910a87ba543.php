<!DOCTYPE html>
<html lang="en">
<head>


    <?php




            if(isset($page_title)){
                $title=$page_title.'-'.get_option('site_title');
            } else {

                $title=get_option('site_title');
            }




    ?>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">

    <title><?=$title?></title>
    <link rel="shortcut icon" href="<?=get_option('icon')?>">
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/bootstrap.min.css">
    <!-- Customizable CSS -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/main.css">
    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/blue.css">
    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/owl.transitions.css">
    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/animate.min.css">
    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/rateit.css">
    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/search.css">
    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/stellarnav.css">


    <meta name="title" content="<?php echo e($seo_title); ?>"/>
    <meta name="keywords" content="<?php echo e($seo_keywords); ?>"/>
    <meta name="description" content="<?php echo e($seo_description); ?>"/>

    <meta name="robots" content="index,follow"/>


    <link rel="canonical" href="<?php echo e(url()->current()); ?>"/>
    <meta property="og:locale" content="EN"/>
    <meta property="og:url" content="<?php echo e(url()->current()); ?>"/>
    <meta property="og:type" content="<?php echo e($seo_description); ?>"/>
    <meta property="og:title" content="<?php echo e($seo_title); ?>"/>
    <meta property="og:description"  name="description" content="<?php echo e($seo_description); ?>"/>
    <meta property="og:image" content="<?php if(isset($share_picture)){ echo $share_picture;} ?>"/>
    <meta property="og:site_name" content="<?php echo e($seo_keywords); ?>"/>




    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/bootstrap-select.min.css">
    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/font_end/')); ?>/css/font-awesome.css">
    <script src="<?php echo e(asset('assets/font_end/')); ?>/js/jquery-1.11.1.min.js"></script>


    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>
<style>


    /* Style the navigation menu */
    .topnav {
        overflow: hidden;
    background-color: #2b436f;
    position: relative;
    margin-top: 0px;
    z-index: 9999;
    width: 517px;
    margin-left: 0px;
    }

    /* Hide the links inside the navigation menu (except for logo/home) */
    .topnav #myLinks {
        display: none;
    }

    /* Style navigation menu links */
    .topnav a {
       color: #f7f7f7;
    padding: 14px 25px;
    text-decoration: none;
    font-size: 21px;
    display: block;
    }

    /* Style the hamburger menu */
    .topnav a.icon {
        background: black;
        display: block;
        position: absolute;
        right: 0;
        top: 0;
    }

    /* Add a grey background color on mouse-over */
    .topnav a:hover {
        background-color: #ddd;
        color: black;
    }

    /* Style the active link (or home/logo) */
    .top_welcome {
        background-color: #ba5ec5;
        color: white;
    }
</style>
<body class="cnt-home">
<!--  HEADER  -->
<header class="header-style-1">
    <div class="top-bar animate-dropdown">
        <div class="container-fluid">
            <div class="header-top-inner">
                <div class="cnt-account">
                    <ul class="list-unstyled">
                        <li><a href="<?php echo e(url('/track-your-order')); ?>"><i class="icon fa fa-search"></i>Track Order</a></li>
                        
                        <li><a href="<?php echo e(url('/cart')); ?>"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
                        <li><a href="<?php echo e(URL::to('/customer/form')); ?>"><i class="icon fa fa-lock"></i>customer form</a></li>
                        <li><a href="<?php echo e(URL::to('/customer/login')); ?>"><i class="icon fa fa-lock"></i>Login</a></li>
                    </ul>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>


    <div class="topnav">
        <a href="<?php echo e(url('/')); ?>" class="top_welcome">Welcome to Money Transfer
        </a>
        <!-- Navigation links (hidden by default) -->
        <div id="myLinks">
            <li><a href="<?php echo e(url('/track-your-order')); ?>"><i class="icon fa fa-search"></i>Track Order</a></li>
            <li><a href="<?php echo e(url('/cart')); ?>"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
            <li><a href="#"><i class="icon fa fa-lock"></i>Login</a></li>
        </div>
        <!-- "Hamburger menu" / "Bar icon" to toggle the navigation links -->
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>
    <style>

        @media  screen and (max-width: 776px) {
            form.example input[type=text] {
                padding: 8px;
                font-size: 17px;
                border: 1px solid grey;

                width: 72% !important;
                background: #f1f1f1;
                margin-left:50px;
            }
            form.example button {
                float: left;
                width: 11% !important;
                padding: 10px;
                background: #2196F3;
                color: white;
                font-size: 17px;
                border: 1px solid grey;
                border-left: none;
                cursor: pointer;
            }
        }
        form.example input[type=text] {
            padding: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            width: 80%;
            background: #f1f1f1;
        }

        form.example button {
            float: left;
            width: 10%;
            padding: 10px;
            background: green;
            color: white;
            font-size: 17px;
            border: 1px solid grey;
            border-left: none;
            cursor: pointer;
        }

        form.example button:hover {
            background: green;
        }

        form.example::after {
            content: "";
            clear: both;
            display: table;
        }
    </style>

    <div class="main-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-2 logo-holder">
                    <div class="logo">
                        <a href="<?php echo e(url('/')); ?>">
                            <img src="<?php echo e(get_option('logo')); ?>" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
                    <div class="search-area" id="search">


                        <form class="example" action="<?php echo e(url('search')); ?>?search=" method="get" >
                            <input type="text" id="searc_query" placeholder="Search Products......." name="search">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>

                        <ul class="dropdown-menu search-item-responsive">

                        </ul>

                    </div>
                    <!-- SEARCH AREA : END -->
                </div>
                <div class="col-xs-12 col-sm-12 col-md-2 mobile-phone ">

                    <h2 style="color: black;font-weight: bold;margin-top: 13px;margin-left: -61px;"><img style="width: 50px;" src="<?php echo e(url('/public/')); ?>/call.gif"><?=get_option('phone')?></h2>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row">

                      <!-- SHOPPING CART DROPDOWN -->
                    
                    <!-- SHOPPING CART DROPDOWN : END -->
                </div>
            </div>
        </div>
    </div>
    <!--  NAVBAR -->
  

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://bestearnidea.com/code/bootstrap/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li>
      </ul>
     
    </div>
  </div>
</nav>
  


</body>
</html>





    <?php
    use Jenssegers\Agent\Agent;

    $agent = new Agent();
    $mobile = $agent->isMobile();
    $tablet = $agent->isTablet();

    if($mobile==1 or $tablet==1) {
    ?>
    
    
    
    
    
    

<?php  }?>
</header>

<?php /**PATH C:\Xampp\htdocs\money_transfer\resources\views/website/includes/header.blade.php ENDPATH**/ ?>