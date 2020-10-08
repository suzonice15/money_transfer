<?php $__env->startSection('pageTitle'); ?>
    All Vendor list
<?php $__env->stopSection(); ?>
<?php $__env->startSection('mainContent'); ?>

    <div class="box-body">
        <div class="table-responsive" >
            <table id="example1" class="table table-bordered table-striped table-responsive ">
                <thead>
                <tr>
                    <th>Sl</th>

                    <th >Name </th>

                    <th >Email </th>
                    <th >Phone </th>
                    <th >Address </th>
                    <th >Status </th>

                    <th >date </th>
                    <th >Action </th>
                </tr>
                </thead>
                <tbody>

                <?php if(isset($vendors)): ?>
                    <?php $i=0;?>
                    <?php $__currentLoopData = $vendors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e(++$i); ?></td>

                            <td><?php echo e($user->vendor_f_name.' '.$user->vendor_l_name); ?> </td>
                            <td><?php echo e($user->vendor_email); ?> </td>
                            <td><?php echo e($user->vendor_phone); ?> </td>
                            <td><?php echo e($user->vendor_address); ?> </td>

                            <td>
                                <?php

                            if($user->status==0){
                            ?>
                                <label class="label label-danger">Pending</label>
                                <?php } else { ?>
                                    <label class="label label-success">Active</label>
                                <?php } ?>
                            </td>
                            <td><?php echo e(date('d-m-Y',strtotime($user->registered_date))); ?></td>
                            <td>
                                <a title="edit" class="btn btn-success" href="<?php echo e(url('/admin/vendor/active')); ?>/<?php echo e($user->vendor_id); ?>">
                                    Active
                                </a>
                                <a title="edit"  class="btn btn-danger"href="<?php echo e(url('/admin/vendor/inactive')); ?>/<?php echo e($user->vendor_id); ?>">
                                    Inactive
                                </a>
                                <a title="delete" href="<?php echo e(url('/admin/vendor/delete')); ?>/<?php echo e($user->vendor_id); ?>" onclick="return confirm('Are you want to delete this information :press Ok for delete otherwise Cancel')">
                                    <span class="glyphicon glyphicon-trash btn btn-danger"></span>
                                </a>
                            </td>
                        </tr>

                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
                </tbody>

            </table>

        </div>



    </div>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rsohojjp/public_html/resources/views/admin/vendor/vendor_users.blade.php ENDPATH**/ ?>