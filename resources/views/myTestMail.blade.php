<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Exchange  Money</title>
    <link rel="stylesheet" type="text/css" href="css/custom.css"/>
    <style type="text/css">
        body{margin:0;padding:0;}
        .wrapper{background:#f1f1f1;padding:40px 0;}
        .template-header{background:#074488;width:600px;border-radius:4px 4px 0 0;}
        .template-header img{display:block;margin:auto;height:40px;padding:10px;}
        a{color:#074488;text-decoration:none;}
    </style>
</head>
<body>




<?php
$order_id= Session::get('order_mail');

$order=DB::table('order_data')->where('order_id','=',$order_id)->first();
$product_items = unserialize($order->products);


?>
<div class="wrapper">
    <table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
        <tr>
            <td align="center" valign="top">
                <div class="template-header">
                    <img src="{{url('/')}}/public/uploads/email.png" alt="money.com">
                </div>

                <table border="0" cellpadding="0" cellspacing="0" width="600" style="background:#ffffff;">
                    <tr>
                        <td valign="top" style="padding:20px 20px 0;">
                            <p style="margin:0 0 10px;font-family:Tahoma,Arial,sans-serif;font-size:14px;font-weight:bold;">Dear    <?= $order->customer_name; ?>
                                ,</p>

                            <p style="margin:0;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                Welcome
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td valign="top" style="padding:0 20px 20px;">
                            <table cellpadding="0" cellspacing="0" style="width:100%;">
                                <tr style="background:#f9f9f9;">
                                    <th style="width:50%;padding:8px;border:1px solid #ddd;text-align:left;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        Product
                                    </th>
                                    <th style="width:50%;padding:8px;border:1px solid #ddd;text-align:right;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        Price
                                    </th>
                                </tr>

                                <?php

                                if(is_array($product_items) && isset($product_items['items']))
                                {
                                foreach($product_items['items'] as $product_id=>$item)
                                {

                                $featured_image = isset($item['featured_image']) ? $item['featured_image'] : null;

                                ?><tr>
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        <img src="<?=$featured_image?>" height="50" width="50" style="float:left;margin-right:10px;"/>
                                        <div class="item-name-and-price">
                                            <div class="item-name">'<?=$item['name']?></div>
                                            <div>
                                                <span style="font-family:'SiyamRupaliANSI';">৳ <?=$item['price']?></span> x <span style="font-family:'SiyamRupaliANSI';"><?=$item['qty']?></span>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;text-align:right;">
                                        <span style="font-family:'SiyamRupaliANSI';">৳ <?=$item['subtotal']?></span>
                                    </td>
                                </tr><?php
                                }
                                }
                                ?>
                            </table>

                            <br>

                            <table cellpadding="0" cellspacing="0" style="width:100%;">
                                <tr style="background:#f9f9f9;display:none">
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        Shipping Charge
                                    </td>
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;text-align:right;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        <span style="font-family:'SiyamRupaliANSI';">৳ 60</span>
                                    </td>
                                </tr>
                                <tr style="background:#f9f9f9;">
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        Total
                                    </td>
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;text-align:right;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        <span style="font-family:'SiyamRupaliANSI';">৳ <?php echo $order->order_total; ?></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        Order Number
                                    </td>
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;text-align:right;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        <span style="font-family:'SiyamRupaliANSI';"><?=$order_id?></span>
                                    </td>
                                </tr>
                                <tr style="display:none;background:#f9f9f9;">
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        Payment Method
                                    </td>
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;text-align:right;font-family:Tahoma,Arial,sans-serif;font-size:14px;">

                                    </td>
                                </tr>
                            </table>

                            <br>

                            <table cellpadding="0" cellspacing="0" style="display:block;width:100%;">
                                <tr style="background:#f9f9f9;">
                                    <td style="width:50%;padding:8px;border:1px solid #ddd;text-align:left;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        Delivery Address
                                    </td>

                                    <td style="width:50%;padding:8px;border:1px solid #ddd;font-family:Tahoma,Arial,sans-serif;font-size:14px;">
                                        <?= $order->customer_address; ?>

                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>



                <table border="0" cellpadding="10" cellspacing="0" width="600" >
                    <tr>
                        <td valign="top" align="center" style="padding:20px 0; color:#999999;font-family:Tahoma,Arial,sans-serif;font-size:12px;font-weight:normal;line-height:20px;text-align:center; background:#eeeeee;">
                            © <?=date('Y')?> All Rights Reserved by  sendmony.com </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
