@extends('layouts.master')
@section('pageTitle')
  Dashboard View
@endsection
@section('mainContent')
<br>
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3>{{$new}}</h3>
                    <h4>@money($new_sum)</h4>

                    <p>New Orders</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
{{--                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>--}}
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-danger">
                <div class="inner">
                    <h3>{{$cancel}}</h3>
                    <h4>@money($cancel_sum)</h4>

                    <p>Cancel Order</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                {{--                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>--}}
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-success">
                <div class="inner">
                    <h3>{{$paid}}</h3>
                    <h4>@money($paid_sum)</h4>

                    <p>Paid</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                {{--                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>--}}
            </div>
        </div>

    </div>


@endsection

