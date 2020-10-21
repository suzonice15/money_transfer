<?php if(isset($customers)): ?>
    <?php $i=$customers->perPage() * ($customers->currentPage()-1);?>
    <?php $__currentLoopData = $customers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $customer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <tr>

            <td> <?php echo e(++$i); ?> </td>
            <td><?php echo e($customer->name); ?></td>
            
            <td><?php echo e($customer->email); ?></td>
            <td><?php echo e($customer->phone); ?></td>
            <td><?php echo e($customer->address); ?></td>
            <td><?php echo e($customer->wallet); ?></td>
           <td><?php echo e(date('d-m-Y H:m s',strtotime($customer->created_at))); ?></td>
            <td>
                <a title="edit" href="<?php echo e(url('admin/customers/edit')); ?>/<?php echo e($customer->id); ?>">
                    <span class="glyphicon glyphicon-plus btn btn-success">Add Blance</span>
                </a>

                <a title="delete" href="<?php echo e(url('admin/customers/delete')); ?>/<?php echo e($customer->id); ?>" onclick="return confirm('Are you want to delete this Product')">
                    <span class="glyphicon glyphicon-trash btn btn-danger"></span>
                </a></td>
        </tr>

    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    <tr>
        <td colspan="9" align="center">
            <?php echo $customers->links(); ?>

        </td>
    </tr>
<?php endif; ?>


<?php /**PATH C:\Xampp\htdocs\money_transfer\resources\views/admin/user/customers_pagination.blade.php ENDPATH**/ ?>