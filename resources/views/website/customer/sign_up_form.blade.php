
@extends('website.master')
@section('mainContent')

    <div class="container">



            <form class="well form-horizontal" action="{{url('/')}}/customer/save" method="post"  id="contact_form">



                {{ csrf_field() }}
            <div>

                <!-- Form Name -->
                <legend><center><h2><b>Registration Form</b></h2></center></legend><br>

                <!-- Text input-->



                <div class="form-group">
                    <div class="col-md-4 inputGroupContainer">
                    @if(Session::has('success'))

                        <div class="alert alert-success">

                            {{ Session::get('success') }}

                            @php

                                Session::forget('success');

                            @endphp

                        </div>

                    @endif
                </div>
                </div>

                <div class="form-group">
                    <div class="col-md-4 inputGroupContainer">
                        @if(Session::has('error'))

                            <div class="alert alert-danger">

                                {{ Session::get('error') }}

                                @php

                                    Session::forget('error');

                                @endphp

                            </div>

                        @endif
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">Full Name</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input  name="name" placeholder="First Name" class="form-control"  type="text">





                        </div>

                    </div>
                    @if ($errors->has('name'))

                        <span class="text-danger">{{ $errors->first('name') }}</span>

                    @endif
                </div>

                <!-- Text input-->


                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label">E-Mail</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input  name="email" placeholder="E-Mail Address" class="form-control"  type="email">
                        </div>
                    </div>
                    @if ($errors->has('email'))

                        <span class="text-danger">{{ $errors->first('email') }}</span>

                    @endif
                </div>
            </div>


                <!-- Text input-->


                <div class="form-group">
                    <label class="col-md-4 control-label">Contact No.</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                            <input name="phone" placeholder="017380000000" class="form-control" type="text">
                        </div>
                    </div>
                    @if ($errors->has('phone'))

                        <span class="text-danger">{{ $errors->first('phone') }}</span>

                    @endif
                </div>
                


                <div class="form-group">
                    <label class="col-md-4 control-label" >Password</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="password" placeholder="Password" class="form-control"  type="password">
                        </div>
                    </div>

                    @if ($errors->has('vendor_password'))

                        <span class="text-danger">{{ $errors->first('password') }}</span>

                    @endif
                </div>


                <div class="form-group">
                    <label class="col-md-4 control-label" >Address </label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <textarea name="vendor_address"  placeholder="addrees" class="form-control" rows="2"></textarea>

                                   </div>
                    </div>
                    @if ($errors->has('vendor_address'))

                        <span class="text-danger">{{ $errors->first('vendor_address') }}</span>

                    @endif
                </div>

                <!-- Select Basic -->

                <!-- Success message -->

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4"><br>
                        <button type="submit" class="btn btn-info" >Register <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
                        <a href="{{url('/vendor/login')}}" class="btn btn-success">Already Account</a>
                    </div>
                </div>

            </fieldset>
        </form>
    </div>
    </div><!-- /.container -->



@endsection

