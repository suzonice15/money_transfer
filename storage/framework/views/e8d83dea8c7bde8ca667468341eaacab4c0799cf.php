<?php $__env->startSection('mainContent'); ?>
<?php
$indhaka=get_option('shipping_charge_in_dhaka');
$outdhaka=get_option('shipping_charge_out_of_dhaka');
$delivery=$indhaka;

                                            $items = \Cart::getContent();
                                            //Cart::clear();
    $count=0;
                                            foreach($items as $row) {

                                                ++$count;
                                            }

                                            if($count > 2){
                                                $indhaka=0;
                                                $outdhaka=0;
                                                $delivery=$indhaka;
                                            }

?>
<br/>
    <div class="container-fluid">

        <div class="row">
            <?php
            if ( !Cart::isEmpty()){
            ?>
                <form style="z-index: 10000000000" action="<?php echo e(url('/chechout')); ?>" id="checkout" name="checkout" method="post">
                    <?php echo csrf_field(); ?>
                <div class="col-md-6">

                    <div class="panel panel-primary">
                        <div class="panel-heading"><b>Order Review</b>
                        </div>

                        <div class="panel-body">

                            <div class="checkoutstep">
                                <div class="cart-info">
                                    <div class="table-responsive">
                                        <table class="table  table-bordered">
                                            <tbody>
                                            <tr>
                                                <th class="name" width="29%">Products</th>
                                                <th class="name" width="10%">Product Code</th>
                                                <th class="name" width="1%">Qnt</th>
                                                <th class="name" width="30%">Price</th>
                                                <th class="name" width="30%">Sub-Total</th>
                                            </tr>
                                            <?php
                                            $items = \Cart::getContent();
                                            //Cart::clear();
                                            foreach($items as $row) {

                                            $subTotal = \Cart::getSubTotal();
                                            $total = \Cart::getTotal();
                                            $subTotal_price=$row->price*$row->quantity;
                                            $imagee=$row->attributes['picture'];
                                            $product_id=$row->id;
                                            $total +=$delivery;

                                            $product=single_product_information($product_id);
                                            $sku=$product->sku;
                                            $name=$product->product_name;

                                            ?>

                                            <tr id="<?php echo e($row->id); ?>">
                                                <td>
                                                    <img src="<?=$imagee?>"
                                                         width="30">

                                                    <a href="<?php echo e(url('/product')); ?>/<?php echo e($name); ?>"><?php echo e($row->name); ?></a>
                                                </td>
                                                <td><?=$sku?></td>

                                                <td>
                                                    <div class="quantity-action ">

                                                        <div class="col-md-1">
                                                            <span id="quantity_value_<?php echo e($row->id); ?>">	<?php echo $row->quantity;?></span>
                                                        </div>



                                                    </div>
                                                </td>

                                                <td>
                                                    <span id="per_poduct_price">  <?php echo '৳ ' . number_format($row->price, 2); ?></span>

                                                </td>
                                                <td>
												<span id="per_poduct_total_price_181">

                                                <?php echo '৳ ' . number_format($subTotal_price, 2); ?>
                                                </span>

                                                </td>
                                                <input type="hidden" name="product_id[]" value="<?=$product_id?>">
                                                <input type="hidden" name="products[items][<?=$product_id?>][featured_image]" value="<?=$imagee?>">
                                                <input type="hidden" id="product_quantity" name="products[items][<?=$product_id?>][qty]" value="<?php echo $row->quantity;?>">
                                                <input type="hidden" id="product_price" name="products[items][<?=$product_id?>][price]" value="<?php echo $row->price;?>">
                                                <input type="hidden" name="products[items][<?=$product_id?>][subtotal]" value="<?=$subTotal_price?>">
                                                <input type="hidden" name="products[items][<?=$product_id?>][name]" value="<?php echo $row->name;?>">


                                            </tr>

                                            <?php } ?>


                                            <tr>
                                                <input type="hidden" class="shipping_charge_in_dhaka" value="<?=$indhaka?>">
                                                <input type="hidden" class="shipping_charge_out_of_dhaka" value="<?=$outdhaka?>">
                                            </tr>



                                            </tbody>
                                        </table>

                                    </div>



                                    <table class="table  table-bordered review_cost">
                                        <tbody>


                                        <tr>
                                            <td>
                                                <span class="extra bold">Sub-Total</span>
                                            </td>
                                            <td class="text-right">
													<span class="bold">

														<span id="subtotal_cost"> <?php echo '৳ ' . number_format($subTotal, 2); ?>



                                                        </span>

                                                        <input type="hidden" id="subtotal_price" value=" <?=$subTotal?>">
													</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="extra bold">Delivery Cost
                                            </span></td>
                                            <td class="text-right">
                                                <span class="bold">৳  <span id="delivery_cost"> <?php echo e($delivery); ?></span></span>


                                                <input type="hidden" id="shipping_charge" name="shipping_charge" value="<?php echo e($delivery); ?>">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="extra bold totalamout">Total</span>
                                            </td>
                                            <td class="text-right">
                                                <span class="bold totalamout">৳  <span id="total_cost">

                                                         <?php echo e($total); ?>

                                                    </span></span>


                                                <input type="hidden" name="payment_type" value="cash_on_delivery">
                                                <input type="hidden"  id="order_total" name="order_total" value="<?php echo e($total); ?>">

                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


                <div class="col-md-6 ">

                <div class="panel panel-primary">
                    <div class="panel-heading"><b>Customer Information</b>
                    </div>
                    <div class="panel-body">


                            <div class="checkoutstep">
                                <div class="form-group">
                                    <label for="billing_name"><b>Name</b></label>
                                    <span style="color:red;font-size: 18px;margin-top: -7px;position: absolute;">*</span>
                                    <input required="" type="text" id="customer_name" name="customer_name" value="" class="form-control " placeholder="Type Your Name">
                                </div>
                                <div class="form-group">
                                    <label for="billing_name"><b>Mobile</b></label>
                                    <span style="color:red;font-size: 18px;margin-top: -7px;position: absolute;">*</span>
                                    <input required="" type="text" id="customer_phone" name="customer_phone" value="" class="form-control " placeholder="Type Your Mobile">
                                    <p id="customer_phone_error" class="text-danger"></p>
                                </div>
                                <div class="form-group" >
                                    <label for="billing_name"><b>Email</b></label>

                                    <input type="text" name="customer_email" id="customer_email" value="" class="form-control " placeholder="Email">
                                    <p id="customer_email_error" class="text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <label for="billing_name"><b>Location</b></label>
                                    <span style="color:red;font-size: 18px;margin-top: -7px;position: absolute;">*</span>
                                    <select required=""  name="order_area" id="city" class="form-control">
                                        <option value="">Select Your Area</option>
                                        <option value="inside">In Dhaka City</option>
                                        <option value="outside">Out Of Dhaka City</option>

                                    </select>
                                </div>



                                <div class="form-group">
                                    <label for="billing_name"><b>Delivery Address</b></label>
                                    <span style="color:red;font-size: 18px;margin-top: -7px;position: absolute;">*</span>
                                    <textarea  required=""  name="customer_address"  class="form-control" placeholder="Type Your Address"></textarea>

                                 </div>


                            </div>
                            <button type="submit" class="btn btn-info">Confirm Order</button>
                            <a href="<?php echo e(url('/')); ?>" style="background-color:#FF6061;border: none" class="btn btn-info">Continue   Shopping</a>

                    </div>
                </div>
            </div>


                </form>
            <?php } else { ?>
                <div class="col-md-12 text-center"><a href="<?php echo e(url('/')); ?>"><img style="margin-bottom: -68px"
                                                                                 src="<?php echo e(url('/')); ?>images/stop.png"/></a>
                </div>
                <div class="col-md-12 mt-5 text-center">
                    <h1 class="text-danger text-center text-capitalize">You have no product in your cart.
                    </h1>
                    <a class="text-center text-capitalize btn btn-info" href="<?php echo e(url('/')); ?>"> back to home</a>
                </div>
            <?php } ?>
        </div>




    </div>

<script>

    jQuery('#city').on('change blur', function () {
        var order_area = jQuery(this).children("option:selected").val();
        if(city.length==0){
            jQuery('#city_eroor').text('Please select your city ');
        } else {
            jQuery('#city_eroor').text('');

        }
        if (order_area == 'inside') {

            var charge = 0;
            jQuery('.shipping_charge_in_dhaka').each(function () {
                charge = Number(jQuery(this).val());
            });

            var total_cost = jQuery('#subtotal_price').val();
            var total = parseFloat(charge) + parseFloat(total_cost.replace(/,/g, ''));
             jQuery('#delivery_cost').text(charge);
            jQuery('#total_cost').text(total.toFixed(2));
            jQuery('input[name=order_total]').val(total);
            jQuery('#shipping_charge').val(charge);



        } else {


            var charge = 0;
            jQuery('.shipping_charge_out_of_dhaka').each(function () {
                charge = Number(jQuery(this).val());
            });



            var total_cost = jQuery('#subtotal_price').val();
            var total = parseFloat(charge) + parseFloat(total_cost.replace(/,/g, ''));
             jQuery('#delivery_cost').text(charge);
            jQuery('#total_cost').text(total.toFixed(2));
            jQuery('input[name=order_total]').val(total);
            jQuery('#shipping_charge').val(charge);



        }

    });

</script>

<script>

    jQuery('form#checkout #customer_phone').on('blur', function () {

        var customer_phone= jQuery('#customer_phone').val();
        var order_id = jQuery('#order_id').val();

        if (!/^01\d{9}$/.test(customer_phone)) {
            jQuery('#customer_phone_error').text("Invalid phone number: must have exactly 11 digits and begin with ");
        } else {
            jQuery('#customer_phone_error').text(" ");

        }

    });


</script>


<script>
    jQuery('#customer_email').blur(function () {
        var error_email = '';
        var email = jQuery('#customer_email').val();
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!filter.test(email)) {
            jQuery('#customer_email_error').html('<label class="text-danger">email address format is not correct</label>');


        } else {
            jQuery('#customer_email_error').html('');

        }
    });
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('website.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rsohojjp/public_html/resources/views/website/checkout.blade.php ENDPATH**/ ?>