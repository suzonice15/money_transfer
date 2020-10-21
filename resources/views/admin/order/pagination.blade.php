@if(isset($orders))
    <?php $i=$orders->perPage() * ($orders->currentPage()-1);?>
    @foreach ($orders as $order)
        <tr>

            <td>{{ $order->order_id }}</td>
            <td>{{ $order->customer_name }}</td>
            <td><span class="btn btn-info">{{ $order->customer_phone }}</span></td>
            <td><span class="btn btn-success">@if($order->order_area=='inside')
                Inside Dhaka @else Outside Dhaka @endif
                </span></td>
            <td> <?php


                $order_items = unserialize($order->products);

                if(is_array($order_items['items'])) {
                    foreach ($order_items['items'] as $product_id => $item) {
                        $featured_image = isset($item['featured_image']) ? $item['featured_image'] : null;

                        $product = single_product_information($product_id);
                       // $sku = $product->sku;
                        $name = $product->product_name;

                        ?>
<a  target="_blank" href="{{URL::to('/'.'/'.$name)}}">


    <span class="btn btn-info" style="height: 29px; width:150px;display: block;overflow: hidden" ><?=($item['name'])?></span>


    <br/>
    <img  src="<?=$featured_image?>" />
    ✖
    <?=($item['qty'])?>
</a>
                <br>
                <?php
                        }
                    }


     ?>



            </td>




            <td>{{$order->created_by}}</td>
             <td> @money($order->order_total)
                </td>

            <td>
                <?php if($order->order_status=='paid'){
                    ?>

                    <span   class="btn btn-success">{{ $order->order_status }}</span>

                <?php  }  else {  ?>

                    <span   class="btn btn-danger">{{ $order->order_status }}</span>
                <?php } ?>


            </td>
            <td>{{date('d-F-Y H:i:s a',strtotime($order->created_time))}}</td>

            <td>

                <?php if($order->order_status=='new'){ ?>
                <a title="edit" href="{{ url('admin/order') }}/{{ $order->order_id }}">
                    <span class="glyphicon glyphicon-edit btn btn-success"></span>
                </a>
                <a title="edit" href="{{ url('admin/order/cancel') }}/{{ $order->order_id }}/{{$order->user_id}}/{{$order->order_total}}">
                    <span class="glyphicon glyphicon-trash btn btn-danger">Cancel</span>
                </a>
                <a title="edit" href="{{ url('admin/order/paid') }}/{{ $order->order_id }}/{{$order->user_id}}/{{$order->order_total}}">
                    <span class="glyphicon glyphicon-minus btn btn-info">Paid</span>
                </a>
                    <?php } else { ?>
                    <a title="edit" href="{{ url('admin/order') }}/{{ $order->order_id }}">
                        <span class="glyphicon glyphicon-edit btn btn-success"></span>
                    </a>
                    <?php } ?>

                {{--<a title="delete" href="{{ url('admin/product/delete') }}/{{ $order->product_id }}" onclick="return confirm('Are you want to delete this Product')">--}}
                    {{--<span class="glyphicon glyphicon-trash btn btn-danger"></span>--}}
                {{--</a>--}}
            </td>
        </tr>

    @endforeach

    <tr>
        <td colspan="13" align="center">
            {!! $orders->links() !!}
        </td>
    </tr>
@endif


