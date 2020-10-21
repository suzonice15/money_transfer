<?php if(isset($customers)): ?>
    <?php $i=$customers->perPage() * ($customers->currentPage()-1);?>
    <?php $__currentLoopData = $customers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $customer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <tr>

            <td> <?php echo e(++$i); ?> </td>
            <td><?php echo e($customer->name); ?></td>

            <td><?php echo e($customer->email); ?></td>
            <td><?php echo e($customer->phone); ?></td>
            <td>


                <?php if($customer->status==1): ?>
                    <span style="color:green;font-weight: bold">+   <?php echo e($customer->amount); ?></span>
                    <?php else: ?>
                    <span style="color:red;font-weight: bold"> - <?php echo e($customer->amount); ?></span>
                    <?php endif; ?>

            </td>

             <td><?php echo e(date('d-m-Y H:m s',strtotime($customer->created_at))); ?></td>

        </tr>

    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    <tr>
        <td colspan="9" align="center">
            <?php echo $customers->links(); ?>

        </td>
    </tr>
<?php endif; ?>


<?php /**PATH C:\Xampp\htdocs\money_transfer\resources\views/admin/user/transaction_pagination.blade.php ENDPATH**/ ?>