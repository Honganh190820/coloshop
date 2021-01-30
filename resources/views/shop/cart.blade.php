@extends('shop.layouts.main')
@section('content')
    <style>
        #cart-summary tbody td.cart-product img { border: 0px }
        .returne-continue-shop .procedtocheckout {
            background: #ff4f4f none repeat scroll 0 0;
            border-radius: 4px;
            color: #fff;
            display: block;
            float: right;
            font-size: 20px;
            line-height: 50px;
            padding: 0 16px;
            transition: all 500ms ease 0s;
        }
        .contact-form label {
            display: block;
            margin: 14px 0;
        }
    </style>
    <div style="margin-top: 20px;" class="container contact_container" id="my_cart">
        <div class="row">
            <div class="col">

                <!-- Breadcrumbs -->

                <div class="breadcrumbs d-flex flex-row align-items-center">
                    <ul>
                        <li><a href="index.html">Trang chủ</a></li>
                        <li class="active"><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Giỏ hàng</a></li>
                    </ul>
                </div>

            </div>
        </div>
        <div id="my_cart">
            @include('shop.components.cart')
        </div>
        @if(session('cart'))

            <form style="width: 1000px" action="{{ route('shop.cart.checkout') }}" method="post" enctype="multipart/form-data">
                @csrf
                <h4>Thông tin cá nhân</h4>
                <div class="row">
                    <div class="col-4">
                        <input class="form_input input_name input_ph" type="text"  id="fullname" name="fullname" value="" placeholder="Họ tên" >
                        @if ($errors->has('fullname'))
                            <p style="color: red" class="help is-danger">{{ $errors->first('fullname') }}</p>
                        @endif

                        <input id="input_email" class="form_input input_phone input_ph" type="text" name="phone" placeholder="Số điện thoại">
                        @if ($errors->has('phone'))
                            <p style="color: red" class="help is-danger">{{ $errors->first('phone') }}</p>
                        @endif

                        <input id="contactEmail" name="email" class="form_input input_email input_ph" type="email" placeholder="Email">
                        @if ($errors->has('email'))
                            <p style="color: red" class="help is-danger">{{ $errors->first('email') }}</p>
                        @endif

                    </div>
                    <div class="col-6">
                        <input id="input_name" class="form_input input_name input_ph" type="text" name="address" placeholder="Địa chỉ nhận hàng" >
                        @if ($errors->has('address'))
                            <p style="color: red" class="help is-danger">{{ $errors->first('address') }}</p>
                        @endif
                        <textarea id="input_content" class="input_ph input_message" name="note"  placeholder="Ghi chú" rows="3"></textarea>
                        <div style="margin-top: 20px" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <!-- RETURNE-CONTINUE-SHOP START -->
                            <div class="returne-continue-shop">
                                <button type="submit" class="procedtocheckout">Gửi đơn hàng</button>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="{{ route('shop.cart.destroy') }}" class="continueshoping"><i class="fa fa-chevron-left"></i>Hủy đặt hàng</a>

            </form>
        @endif
    </div>
@endsection
