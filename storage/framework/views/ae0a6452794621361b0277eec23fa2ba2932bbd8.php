<?php $__env->startSection('pageTitle'); ?>
   Vendor Dashboard
<?php $__env->stopSection(); ?>
<?php $__env->startSection('mainContent'); ?>
    <br>


    <div class="row">

        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3><?php echo e($products); ?></h3>
                    <h4></h4>

                    <p>My Products</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                
            </div>
        </div>

    </div>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rsohojjp/public_html/resources/views/layouts/vendor_dashboard.blade.php ENDPATH**/ ?>