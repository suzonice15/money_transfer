@extends('layouts.master')
@section('pageTitle')
    Update User Registration Form
@endsection
@section('mainContent')
    <style>
        .has-error {
            border-color: red;
        }
    </style>
    <div class="box-body">
        @if (count($errors) > 0)
            <div class=" alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
                <ul>

                    @foreach ($errors->all() as $error)

                        <li style="list-style: none">{{ $error }}</li>

                    @endforeach

                </ul>
            </div>
        @endif

        <div class="col-sm-offset-0 col-md-6">
            <form action="{{ url('admin/customers/update') }}/{{ $user->id }}" class="form-horizontal" method="post"
                  enctype="multipart/form-data">
                @csrf
                <div class="form-group featured-image">
                    <label>Main  Wallet Blance</label>
                    <p class="text-success">{{$user->wallet}}</p>
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





@endsection


