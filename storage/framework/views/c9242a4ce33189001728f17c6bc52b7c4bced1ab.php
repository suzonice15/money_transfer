<?php $__env->startSection('pageTitle'); ?>
    Add New Product
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


        <form action="<?php echo e(url('admin/product/store')); ?>" class="form-horizontal" method="post"
              enctype="multipart/form-data">
            <?php echo csrf_field(); ?>

            <div class="box-body">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="box box-primary" style="border: 2px solid #ddd;">
                            <div class="box-header" style="background-color: #bdbdbf;">
                                <h3 class="box-title">Product Information</h3>
                            </div>
                            <div class="box-body" style="padding: 22px;">
                                <div class="form-group">
                                    <label for="product_title">Product Title<span
                                                class="required">*</span></label>
                                    <input required type="text" class="form-control the_title"
                                           name="product_title" id="product_title"
                                           value="" autocomplete="off">
                                </div>

                                <div class="form-group ">
                                    <label for="product_name">Permalink<span class="required">*</span></label>
                                    <input required type="text" class="form-control the_name"
                                           name="product_name" id="product_name"
                                           value="" autocomplete="off">
                                    <p id="produtctError"></p>
                                </div>

                                <input  type="hidden" class="form-control"
                                       name="folder" id="folder"
                                       value="" >




                                <div class="form-group ">
                                    <label for="sku">Product Code(sku)<span class="required">*</span></label>
                                    <input required type="text" class="form-control" name="sku" id="sku"
                                           value="SB<?php echo $sku;?>" autocomplete="off">
                                    <span class="text-danger" id="sku_error"></span>
                                </div>

                                <div
                                     class="form-group ">
                                    <label for="purchase_price">Purchase Price<span
                                                class="required">*</span></label>
                                    <input type="text" class="form-control" name="purchase_price"
                                           id="purchase_price"
                                           value="" autocomplete="off">
                                </div>

                                <div class="form-group ">
                                    <label for="sell_price">Regular Price<span class="required">*</span></label>
                                    <input required type="text" class="form-control" name="product_price"
                                           id="product_price" value="" autocomplete="off">
                                </div>


                                <div class="form-group ">
                                    <label for="discount_price"> Discount Price</label>
                                    <input type="text" class="form-control" name="discount_price"
                                           id="discount_price"
                                           value="" autocomplete="off">
                                </div>


                                <div class="form-group ">
                                    <label for="product_availability">Product Published
                                        Status</label> <select name="status"
                                                               class="form-control">
                                        <option value="1">Published</option>
                                        <option value="0">Unpublished</option>
                                    </select></div>
                                <div class="form-group ">
                                    <label for="stock_qty">Stock Qty.</label>
                                    <input type="text" class="form-control" name="product_stock" id="product_stock"
                                           value="" autocomplete="off">
                                </div>
                                <div class="form-group" hidden>
                                    <label for="stock_qty">Stock Alert.</label>
                                    <input type="text" class="form-control" name="stock_alert" id="stock_alert"
                                           value="" autocomplete="off">
                                </div>


                                <div class="form-group ">
                                    <label for="product_type">Product Location</label>
                                    <select name="product_type" id="product_type"
                                            class="form-control">
                                        <option value="general">General</option>
                                        <option value="home">Home</option>
                                        <option value="hot">Hot Sell</option>
                                    </select>

                                </div>


                               

                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6">

                        <div class="box box-primary" style="border: 2px solid #ddd;height: 600px">
                            <div class="box-header" style="background-color: #bdbdbf;">

                                <h3 class="box-title">Image and Gallary</h3>
                            </div>
                            <div class="box-body" style="padding: 22px;">

                                <div class="form-group featured-image">
                                    <label>Featured Image<span class="required">* Size(800*800)</span></label>
                                    <input  required type="file" class="form-control" name="featured_image"/>

                                </div>
                            </div>

                            <div class="box-body" style="padding: 22px;">

                                <div class="form-group featured-image">
                                    <label>Product Gallary<span class="required">* Size(800*800)</span></label>
                                    <input type="file" class="form-control" name="product_image1"/>
                                    <br>
                                    <input type="file" class="form-control" name="product_image2"/>
                                    <br>
                                    <input type="file" class="form-control" name="product_image3"/>
                                    
                                    <br>
                                    <br>


                                </div>
                            </div>
                        </div>


                    </div>
                </div>


                <div class="box-body">

                    <div class="row">
                        <div class="col-md-6">
                            <div class="box box-primary" style="border: 2px solid #ddd;">
                                <div class="box-header" style="background-color: #bdbdbf;">

                                    <h3 class="box-title">Categories<span class="required">*</span></h3>
                                </div>
                                <div class="box-body" style="padding: 22px;height: 300px;overflow: scroll">
                                    <div class="form-group">
                                        <?php




                                        if (isset($categories)) {
                                        foreach ($categories as $category) {


                                       $subCategory_id = $category->category_id;
                                        $subCategories=DB::table('category')->where('parent_id',$subCategory_id)->orderBy('category_id','ASC')->get();


                                        ?>
                                        <input type="checkbox"   name="category_id[]" value="<?php echo $category->category_id;?>">
                                            <span><?php echo $category->category_title;?></span>
                                            <br>
                                            <?php

                                            if($subCategories) {
                                                foreach ($subCategories as $subCategory) {

                                            $childCategory_id = $subCategory->category_id;
                                            $childCategories=DB::table('category')->where('parent_id',$childCategory_id)->orderBy('category_id','ASC')->get();

                                            ?>



                                            <input type="checkbox"  style="margin-left: 30px" name="category_id[]" value="<?php echo $subCategory->category_id;?>">
                                            <span><?php echo $subCategory->category_title;?></span>
                                            <br/>

                                            <?php

                                            if($childCategories){
                                                foreach ($childCategories as $childCategory) {
                                            ?>
                                            <input type="checkbox"  style="margin-left: 60px" name="category_id[]" value="<?php echo $childCategory->category_id;?>">
                                            <span><?php echo $childCategory->category_title;?></span>
                                            <br/>

                                        <?php
                                                    }
                                              }  }

                                                }

                                        }


                                        }


                                        ?>
                                    </div>
                                </div>
                            </div>

                        </div>


                    </div>

                </div>


                <div class="box box-primary" style="border: 2px solid #ddd;">
                    <div class="box-header" style="background-color: #ddd;">
                        <h3 class="box-title">Product Summary
                        </h3>
                    </div>
                    <div class="box-body" style="padding: 22px; ">
                        <div class="form-group ">
                            <textarea class="form-control ckeditor" rows="3" name="product_specification"
                                      id="product_specification"> </textarea>
                        </div>
                    </div>
                </div>
               

                
                
                <div class="box-footer">

                    <button type="submit" class="btn btn-success pull-left">Update</button>
                </div>
            </div>


        </form>

    </div>


    <script>
        $(document).ready(function () {
            $("#product_title").on('input click', function () {
                var text = $("#product_title").val();
                var _token = $("input[name='_token']").val();

                var word = text.toLowerCase().replace(/ /g, '-').replace(/[^\w-]+/g, '');
                $("#product_name").val(word);
                $.ajax({
                    data: {url: word, _token: _token},
                    type: "POST",
                    url: "<?php echo e(route('product.urlcheck')); ?>",
                    success: function (result) {

                        // $('#categoryError').html(result);
                        var str2 = "es";
                        var word = $("#product_name").val(word);
                        if (result) {
                            var text = $("#product_title").val();
                            var word = text.toLowerCase().replace(/ /g, '-').replace(/[^\w-]+/g, '');
                            var word = word.concat(str2);
                            $("#product_name").val(word);

                        } else {
                            var text = $("#product_title").val();
                            var word = text.toLowerCase().replace(/ /g, '-').replace(/[^\w-]+/g, '');
                            $("#product_name").val(word);
                        }
                    }
                });
            });


        });
    </script>


    <script>
        $(document).ready(function () {
            $("body").on('mousemove', function () {

                var _token = $("input[name='_token']").val();


                $.ajax({
                    data: {_token: _token},
                    type: "POST",
                    url: "<?php echo e(route('product.foldercheck')); ?>",
                    success: function (result) {
                        $('#folder').val(result);
                    }
                });
            });


        });
    </script>


<?php $__env->stopSection(); ?>



<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bestearnidea/public_html/taka2/resources/views/admin/product/create.blade.php ENDPATH**/ ?>