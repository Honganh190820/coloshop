@extends('shop.layouts.main')
@section('content')
    <div style="margin-top: 20px;" class="container contact_container">
        <div class="row">
            <div class="col">

                <!-- Breadcrumbs -->

                <div class="breadcrumbs d-flex flex-row align-items-center">
                    <ul>
                        <li><a href="index.html">Trang chủ</a></li>
                        <li class="active"><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Liên hệ</a></li>
                    </ul>
                </div>

            </div>
        </div>

        <!-- Map Container -->
        <!-- Contact Us -->

        <div id="contacts" class="row">

            <div class="col-lg-6 contact_col">
                <div class="contact_contents">
                    <h1>Liên hệ với chúng tôi</h1>
                    <p>{{$setting->content}}</p>
                    <div>
                        <p>Hotline: {{$setting->hotline}}</p>
                        <p>{{$setting->gmail}}
                        </p>
                    </div>
                    <div>
                        <p>Địa chỉ: {{$setting->address}}</p>
                    </div>
                    <div>
                        <p>Giờ mở cửa: 8.00-18.00 Mon-Fri</p>
                        <p>Chủ nhật: Đóng cửa</p>
                    </div>
                </div>

                <!-- Follow Us -->

                <div class="follow_us_contents">
                    <h1>Theo dõi tôi</h1>
                    <ul class="social d-flex flex-row">
                        <li><a href="#" style="background-color: #3a61c9"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#" style="background-color: #41a1f6"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#" style="background-color: #fb4343"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                        <li><a href="#" style="background-color: #8f6247"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
                </div>

            </div>

            <div class="col-lg-6 get_in_touch_col">
                <div class="get_in_touch_contents">
                    <h1>Liên hệ với chúng tôi</h1>
                    <form action="{{route('shop.postcontact')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div>
                            <input id="input_name" class="form_input input_name input_ph" type="text" name="name" placeholder="Họ tên" >
                            <input id="input_email" class="form_input input_phone input_ph" type="text" name="phone" placeholder="Số điện thoại">
                            <input id="input_email" class="form_input input_email input_ph" type="email" name="email" placeholder="Email">
                            <textarea id="input_content" class="input_ph input_message" name="content"  placeholder="Ghi chú" rows="3"></textarea>
                        </div>
                        <div>
                            <button id="review_submit" type="submit" class="red_button message_submit_btn trans_300" value="Submit">Gửi</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
@endsection
