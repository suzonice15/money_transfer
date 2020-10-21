<?php $__env->startSection('pageTitle'); ?>
    All Transaction     List
<?php $__env->stopSection(); ?>
<?php $__env->startSection('mainContent'); ?>
    <div class="box-body">
        <div class="row">
            <div class="col-md-2">

            </div>

            <div class="col-md-5  pull-right">
                <input type="text" id="serach" name="search" placeholder="Search Email and Phone Number  " class="form-control" >
            </div>
        </div>
        <br/>
        <div class="table-responsive">

            <table  class="table table-bordered table-striped   ">
                <thead>
                <tr>
                    <th>Sl</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Amount</th>
                    <th>Created Date</th>

                </tr>
                </thead>
                <tbody>

                <?php echo $__env->make('admin.user.transaction_pagination', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </tbody>

            </table>

        </div>

        <input type="hidden" name="hidden_page" id="hidden_page" value="1" />

    </div>

    <script>
        $(document).ready(function(){

            function fetch_data(page, query)
            {
                $.ajax({
                    type:"GET",
                    url:"<?php echo e(url('customers/transaction/pagination')); ?>?page="+page+"&query="+query,
                    success:function(data)
                    {
                        $('tbody').html('');
                        $('tbody').html(data);
                    }
                })
            }

            $(document).on('keyup input', '#serach', function(){
                var query = $('#serach').val();
                var page = $('#hidden_page').val();
                if(query.length >0) {
                    fetch_data(page, query);
                } else {
                    fetch_data(1, '');
                }
            });


            $(document).on('click', '.pagination a', function(event){
                event.preventDefault();
                var page = $(this).attr('href').split('page=')[1];
                $('#hidden_page').val(page);
                var query = $('#serach').val();
                fetch_data(page, query);
            });

        });
    </script>


<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Xampp\htdocs\money_transfer\resources\views/admin/user/transaction.blade.php ENDPATH**/ ?>