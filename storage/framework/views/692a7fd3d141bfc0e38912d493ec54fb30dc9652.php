
    <?php echo $__env->make('website.includes.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->yieldContent('mainContent'); ?>

    <?php echo $__env->make('website.includes.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php /**PATH /home/bestearnidea/public_html/taka2/resources/views/website/master.blade.php ENDPATH**/ ?>