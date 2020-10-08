<?php $__env->startSection('pageTitle'); ?>
  Dashboard View
<?php $__env->stopSection(); ?>
<?php $__env->startSection('mainContent'); ?>
<br>
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3><?php echo e($new); ?></h3>
                    <h4><?php echo '৳ ' . number_format($new_sum, 2); ?></h4>

                    <p>New Orders</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>

            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3><?php echo e($pending_payment); ?></h3>
                    <h4><?php echo '৳ ' . number_format($pending_sum, 2); ?></h4>

                    <p>Pending for Payment</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3><?php echo e($processing); ?></h3>
                    <h4><?php echo '৳ ' . number_format($processing_sum, 2); ?></h4>

                    <p>On Process</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3><?php echo e($on_courier); ?></h3>
                    <h4><?php echo '৳ ' . number_format($on_courier_sum, 2); ?></h4>

                    <p>With Courier</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                
            </div>
        </div>
        <!-- ./col -->
    </div>

<div class="row">
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?php echo e($delivered); ?></h3>
                <h4><?php echo '৳ ' . number_format($delivered_sum, 2); ?></h4>

                <p>Delivered</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?php echo e($refund); ?></h3>
                <h4><?php echo '৳ ' . number_format($refund_sum, 2); ?></h4>

                <p>Refunded</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?php echo e($cancled); ?></h3>
                <h4><?php echo '৳ ' . number_format($cancled_sum, 2); ?></h4>

                <p>Cancelled</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?php echo e($completed); ?></h3>
                <h4><?php echo '৳ ' . number_format($completed_sum, 2); ?></h4>

                <p>Completed</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            
        </div>
    </div>
    <!-- ./col -->
</div>


<div class="row">
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?php echo e($today_order); ?></h3>
                <h4><?php echo '৳ ' . number_format($today_order_sum, 2); ?></h4>

                <p>Today Orders</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?php echo e($products); ?></h3>
                <h4></h4>

                <p>All Products</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?php echo e($category); ?></h3>
                <h4></h4>

                <p>All Category</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3>88888</h3>
                <h4></h4>

                <p>Today Visitors</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            
        </div>
    </div>
    <!-- ./col -->
</div>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bestearnidea/public_html/taka2/resources/views/layouts/dashboard.blade.php ENDPATH**/ ?>