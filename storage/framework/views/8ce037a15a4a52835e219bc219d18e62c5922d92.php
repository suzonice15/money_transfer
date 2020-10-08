<?php $__env->startSection('pageTitle'); ?>
    All Orders  List
<?php $__env->stopSection(); ?>
<?php $__env->startSection('mainContent'); ?>
    <div class="box-body">
        <div class="row">
            <div class="col-md-5  pull-right">
                <input type="text" id="serach" name="search" placeholder="Search Order By Order Id,Customer Phone" class="form-control" >
                <br>
            </div>
        </div>
        <div class="table-responsive">

            <table  class="table table-bordered table-striped ">
                <thead>
                <tr>
                    <th>Sl</th>
                    <th>Order Id</th>
                    <th>Customer</th>
                    <th>Phone</th>
                    <th>City</th>
                    <th>Product</th>
                    <th>Vendor</th>
                    <th>Created By</th>
                    <th>Amount</th>

                    <th>Status</th>
                    <th>Order Date</th>
                    
                    
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>

                <?php if(isset($orders)): ?>
                    <?php $i=0;?>
                    <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e(++$i); ?></td>
                            <td><?php echo e($order->order_id); ?></td>
                            <td><?php echo e($order->customer_name); ?></td>
                            <td><span class="label label-info"><?php echo e($order->customer_phone); ?><span class="label label-success"></span></td>
                            <td><span class="label label-success"><?php if($order->order_area=='inside'): ?>
                                        Inside Dhaka <?php else: ?> Outside Dhaka <?php endif; ?>
                </span></td>
                            <td><?php

                                $order_items = unserialize($order->products);

                                if(is_array($order_items['items'])) {
                                foreach ($order_items['items'] as $product_id => $item) {
                                $featured_image = isset($item['featured_image']) ? $item['featured_image'] : null;

                                $product = single_product_information($product_id);
                                $sku = $product->sku;
                                $name = $product->product_name;

                                ?>
                                <a  target="_blank" href="<?php echo e(URL::to('/product'.'/'.$name)); ?>">


                                    <span class="label label-info" style="height: 20px; width:150px;display: block;overflow: hidden" ><?=($item['name'])?></span>


                                    <br/>
                                    <img  src="<?=$featured_image?>" />
                                    ✖
                                    <?=($item['qty'])?>
                                </a>
                                <br>





                                <?php
                                }
                                }


                                ?>



                            </td>


                            <td><?php

                                $order_items = unserialize($order->products);

                                if(is_array($order_items['items'])) {
                                foreach ($order_items['items'] as $product_id => $item) {

                                $product = single_product_information($product_id);
                                $vendor_id=$product->vendor_id;
                                if($vendor_id==0){
                                    $owner=" Sohojbuy Product";
                                } else {
                                    $vendor_result= DB::table('vendor')->where('vendor_id',$vendor_id)->first();
                                }

                                ?>

                                <?php
                                if($vendor_id==0){

                                ?>

                                <span class="label label-success"><?php echo $owner; ?></span>

                                <?php  }  else {


                                ?>
                                <a  target="_blank" href="<?php echo e(URL::to('/admin/vendor/view'.'/'.$vendor_id)); ?>">
                                    <span class="label label-primary"><?php echo $vendor_result->vendor_f_name; ?></span>
                                </a>
                                <br>
                                <?php } ?>





                                <?php
                                }
                                }


                                ?>



                            </td>


                            <td><?php echo e($order->created_by); ?></td>
                            <td> <?php echo '৳ ' . number_format($order->order_total, 2); ?>
                            </td>

                            <td>
                                <?php if($order->order_status=='pending_payment'){
                                ?>

                                <span   style="background-color:yellow"><?php echo e($order->order_status); ?></span>
                                <?php  } elseif ($order->order_status=='new') { ?>
                                <span   class="label label-info"><?php echo e($order->order_status); ?></span>

                                <?php  } elseif ($order->order_status=='processing') { ?>
                                <span   class="label label-info"><?php echo e($order->order_status); ?></span>

                                <?php  } elseif ($order->order_status=='on_courier') { ?>

                                <span   class="label label-danger"><?php echo e($order->order_status); ?></span>
                                <?php  } elseif ($order->order_status=='delivered') { ?>
                                <span   class="label label-success"><?php echo e($order->order_status); ?></span>

                                <?php  } elseif ($order->order_status=='refund') { ?>

                                <span   class="label label-danger"><?php echo e($order->order_status); ?></span>
                                <?php  } elseif ($order->order_status=='cancled') { ?>
                                <span   class="label label-danger"><?php echo e($order->order_status); ?></span>
                                <?php } else {  ?>

                                <span   class="label label-success"><?php echo e($order->order_status); ?></span>
                                <?php } ?>


                            </td>
                            <td><?php echo e(date('d-F-Y H:i:s a',strtotime($order->created_time))); ?></td>

                            <td>




                                
                                
                                
                            </td>
                        </tr>

                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    <tr>
                        <td colspan="13" align="center">

                        </td>
                    </tr>
                <?php endif; ?>



                </tbody>

            </table>

        </div>


    </div>



<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rsohojjp/public_html/resources/views/website/vendor/vendor_all_orders.blade.php ENDPATH**/ ?>