<?php $__env->startSection('mainContent'); ?>
    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="<?php echo e(url('/')); ?>">Home</a></li>
                    <li class='active'><?php echo e($vendor_link); ?> </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="body-content outer-top-xs">
        <div class='container-fluid'>
            <div class='row'>

                <div class='col-md-12'>
                    <div class="search-result-container">
                        <div id="myTabContent" class="tab-content category-list">
                            <div class="tab-pane active " id="grid-container">
                                <div class="category-product">
                                    <div class="row">


                                            <span id="post-data">
                                                  <?php echo $__env->make('website.vendor.vendor_shop_ajax', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                            </span>



                                    </div>
                                </div>
                                <!-- /.category-product -->
                            </div>

                        </div>
                        <!-- /.tab-content -->

                    </div>
                </div>
            </div>

        </div>
    </div>
    <input type="hidden"  id="vendor_link" name="vendor_link" value="<?php echo e($vendor_link); ?>">

    <script type="text/javascript">

        var page = 1;
        //jQuery('.ajax-load').show();
        jQuery(window).scroll(function() {


            page++;

            loadMoreData(page);



        });


        function loadMoreData(page){
            var vendor_link=$('#vendor_link').val();
            jQuery.ajax(

                {

                    url:"<?php echo e(url('/vendor-shop-ajax-product')); ?>?page="+page+"&vendor_link="+vendor_link,

                    type: "get",

                    beforeSend: function()

                    {

                        //jQuery('.ajax-load').show();

                    }

                })

                .done(function(data)

                {
                    // console.log(data.html)
                    if(data.html == " "){

                        jQuery('.ajax-load').html("No more records found");

                        return;

                    }

                    jQuery('.ajax-load').hide();

                    jQuery("#post-data").append(data.html);

                })

                .fail(function(jqXHR, ajaxOptions, thrownError)

                {

                    // alert('server not responding...');

                });

        }

    </script>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('website.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rsohojjp/public_html/resources/views/website/vendor/vendor_shop.blade.php ENDPATH**/ ?>