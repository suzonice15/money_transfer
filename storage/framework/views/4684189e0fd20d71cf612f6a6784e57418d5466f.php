<?php $__env->startSection('pageTitle'); ?>
    Update User Registration Form
<?php $__env->stopSection(); ?>
<?php $__env->startSection('mainContent'); ?>
    <style>
        .has-error {
            border-color: red;
        }
    </style>
    <div class="box-body">
        <?php if(count($errors) > 0): ?>
            <div class=" alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
                <ul>

                    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                        <li style="list-style: none"><?php echo e($error); ?></li>

                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </ul>
            </div>
        <?php endif; ?>

        <div class="col-sm-offset-0 col-md-6">
            <form action="<?php echo e(url('admin/customers/update')); ?>/<?php echo e($user->id); ?>" class="form-horizontal" method="post"
                  enctype="multipart/form-data">
                <?php echo csrf_field(); ?>
                <div class="form-group featured-image">
                    <label>Main  Wallet Blance</label>
                    <p class="text-success"><?php echo e($user->wallet); ?></p>
                </div>


                <div class="form-group featured-image">
                    <label>Add Wallet Blance</label>
                    <input type="number" required class="form-control" name="wallet">

                </div>


                <div class="box-footer">
                    <input type="submit" class="btn btn-success pull-right" value="Add Blance">

                </div>
            </form>


            </form>
        </div>
    </div>





<?php $__env->stopSection(); ?>



<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Xampp\htdocs\money_transfer\resources\views/admin/user/customers_edit.blade.php ENDPATH**/ ?>