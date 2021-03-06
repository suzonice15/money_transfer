<h3 class="section-title">hot deals</h3>
<div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-xs">


    <?php foreach ($products as $product) {

    if ($product->discount_price) {
        $sell_price = $product->discount_price;
    } else {
        $sell_price = $product->product_price;
    }

    ?>
    <div class="item">
        <div class="products">
            <div class="hot-deal-wrapper">
                <div class="image">
                    <img
                        src="<?php echo e(url('/public/uploads')); ?>/<?php echo e($product->folder); ?>/<?php echo e($product->feasured_image); ?>"
                        alt="">                                            </div>
                <div class="sale-offer-tag"><span><?php echo e($product->discount); ?>%<br>off</span></div>
                <div class="timing-wrapper">

                </div>
            </div>
            <!-- /.hot-deal-wrapper -->
            <div class="product-info text-left m-t-20">

                <div class="product-price">
                                                    <span class="price">
                                                   <?php echo '৳ ' . number_format($sell_price, 2); ?>
                                                    </span>
                    <?php


                    if ($product->discount_price) {

                    ?>
                    <span class="price-before-discount">  <?php echo '৳ ' . number_format($product->product_price, 2); ?></span>
                    <?php }?>
                    <br/>                     Code:<?php echo e($product->sku); ?>

                </div>
                <h3 class="name">
                    <a href="<?php echo e(url('/')); ?>/<?php echo e($product->product_name); ?>">

                        <?php echo e($product->product_title); ?>

                    </a>
                </h3>

                <!-- /.product-price -->
            </div>
            <!-- /.product-info -->






















        </div>
    </div>
    <?php } ?>
</div>
<!-- /.sidebar-widget -->
<?php /**PATH /home/bestearnidea/public_html/taka1/resources/views/website/hotdeal_product.blade.php ENDPATH**/ ?>