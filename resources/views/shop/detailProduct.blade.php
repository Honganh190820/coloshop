@extends('shop.layouts.main')
@section('content')
        <div style="margin-top: 20px;"  class="container single_product_container">
            <div class="row">
                <div class="col product_section clearfix">
                    <div style="margin-top: 145px" class="breadcrumbs d-flex flex-row align-items-center">
                        <ul>
                            <li><a href="/">Trang chủ</a></li>
                            <li><a href="{{route('shop.products_by_category',['slug' => $category->slug])}}"><i class="fa fa-angle-right" aria-hidden="true"></i>{{$category->name}}</a></li>
                            <li class="active"><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i>{{$product->name}}</a></li>
                        </ul>
                    </div>

                </div>
            </div>
<div class="container">
    <div class="row">
{{--        <div class="col-lg-6">--}}
{{--            <div class="single_product_pics">--}}
{{--                    <div class="col-lg-12 image_col order-lg-2 order-1">--}}
{{--                        <div class="single_product_image">--}}
{{--                            <div class="single_product_image_background" style="background-image:url({{asset($product->image)}})"></div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--        </div>--}}

        <div class="col-lg-6">
            <div class="single_product_pics">
                <div class="row">
                    <div class="col-lg-3 thumbnails_col order-lg-1 order-2">
                        <div class="single_product_thumbnails">
                            <ul>
                                <li class="active"><img src="{{asset($product->image)}}" alt="" data-image="{{asset($product->image)}}"></li>
                                <li class=""><img src="{{asset($product->image2)}}" alt="" data-image="{{asset($product->image2)}}"></li>
                                <li class=""><img src="{{asset($product->image3)}}" alt="" data-image="{{asset($product->image3)}}"></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9 image_col order-lg-2 order-1">
                        <div class="single_product_image">
                            <div class="single_product_image_background" style="background-image: url({{asset($product->image)}});"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="product_details">
                <div class="product_details_title">
                    <h2>{{$product->name}}</h2>
                    <p>{!! $product->summary !!}</p>
                </div>
                @if($product->sale==0)
                    <div class="product_price">{{ number_format( $product->price)}} <sup>đ</sup></div>
                @else
                    <div class="original_price">{{ number_format($product->price)}} <sup>đ</sup></div>
                    <div class="product_price">{{number_format($product->sale)}} <sup>đ</sup></div>
                @endif
                <div class="product_color">
                    <span>Kho hàng:</span>
                    <ul>
                        <li> {{$product->stock}}</li>

                    </ul>
                </div>
                <div class="product_color">
                    <span>Trạng thái:</span>
                    <ul>
                        <li> {{ ($product->stock > 0) ? 'Còn hàng' : 'Hết hàng' }}</li>

                    </ul>
                </div>
{{--                <div class="product_color">--}}
{{--                    <span>Select Color:</span>--}}
{{--                    <ul>--}}
{{--                        <li style="background: #e54e5d"></li>--}}
{{--                        <li style="background: #252525"></li>--}}
{{--                        <li style="background: #60b3f3"></li>--}}
{{--                    </ul>--}}
{{--                </div>--}}

                <div class="quantity d-flex flex-column flex-sm-row align-items-sm-center">
{{--                    <span>Số lượng: </span>--}}
{{--                    <input value="1" class="cart-plus-minus item-qty" name="qty" value="{{ $product['qty'] }}"  data-num="{{ $product['qty'] }}" style="width: 45px; margin-left: 3px" type="number">--}}
                    <div style="margin-left: 30px;"><a class="btn btn-danger" href="{{ route('shop.cart.add-to-cart', ['id' => $product->id]) }} "> Thêm vào giỏ hàng</a></div>
                </div>

            </div>
        </div>
    </div>
</div>
            <div class="tabs_section_container">

                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="tabs_container">
                                <ul class="tabs d-flex flex-sm-row flex-column align-items-left align-items-md-center justify-content-center">
                                    <li class="tab active" data-active-tab="tab_1"><span>Mô tả</span></li>
                                    <li class="tab" data-active-tab="tab_3"><span>Đánh giá</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">

                            <!-- Tab Description -->

                            <div id="tab_1" class="tab_container active">
                                <div class="row">
                                    <div class="col-lg-5 desc_col">
                                        <div class="tab_title">
                                            <h4>Mô tả</h4>
                                        </div>
                                        <div class="tab_text_block">
                                            <p>{!! $product->description!!}</p>
                                        </div>
                                        <div class="tab_image">
                                            <img src="{{asset($product->image)}}" alt="">
                                        </div>
                                        <div class="tab_text_block">
                                            <p>{!! $product->description!!}</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 offset-lg-2 desc_col">
                                        <div class="tab_image">
                                            <img src="{{asset($product->image2)}}" alt="">
                                        </div>
                                        <div class="tab_text_block">
                                            <p>{!! $product->description!!}</p>
                                        </div>
                                        <div class="tab_image desc_last">
                                            <img src="{{asset($product->image3)}}" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Tab Reviews -->

                             <div id="tab_3" class="tab_container ">
                        <div class="row">

                    <!-- User Reviews -->

                                                <div class="col-lg-6 reviews_col">
                                                    <div class="tab_title reviews_title">
                                                        <h4>Đánh giá</h4>
                                                    </div>
                                                    <!-- User Review -->
{{--                                                    @if(!empty($rating == ""))--}}


                                                        @foreach($rating as $item)
                                                        <div class="user_review_container d-flex flex-column flex-sm-row">

                                                            <div class="review">
                                                                <div>
                                                                    <div class="user_name">{{$item->name}}
                                                                        <ul class="star_rating">
                                                                        @for($i =0 ; $i < $item->ra_number ;$i++ )
                                                                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                            @endfor
                                                                            @for($i =0 ; $i < 5 - $item->ra_number ;$i++ )

                                                                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                                                            @endfor

                                                                        </ul>
                                                                    </div>

                                                                </div>
                                                                <div class="review_date">{{$item->create_at}}</div>
                                                                <p>{{$item->message}}</p>
                                                            </div>
                                                        </div>
                                                    @endforeach

{{--                                                    @else--}}
{{--                                                        <p>chưa có đánh giá</p>--}}
{{--                                                            @endif--}}

                                                </div>

                                                <!-- Add Review -->

                                                <div style="margin-top: -70px;" class="col-lg-6 add_review_col">

                                                    <div class="add_review">
                                                        <div id="review_form"  >

                                                            <div>
                                                                <h1>Thêm đánh giá của bạn</h1>
                                                                <input id="review_name" class="form_input input_name" type="text" name="name" placeholder="Name*" required="required" data-error="Name is required.">
                                                                <input id="review_phone" class="form_input input_phone" type="text" name="phone" placeholder="Phone*" required="required" data-error="Phone is required.">
                                                                <input id="review_email" class="form_input input_email" type="email" name="email" placeholder="Email*" required="required" data-error="Valid email is required.">
                                                            </div>
                                                            <div>
                                                                <h1>Xếp hạng:</h1>
                                                                <ul class="user_star_rating">
                                                                    <li><i class="fa fa-star"  aria-hidden="true"></i></li>
                                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                </ul>
                                                                <textarea id="review_message" class="input_review" name="message" placeholder="Your Review" rows="4" required="" data-error="Please, leave us a review."></textarea>
                                                            </div>
                                                            <div class="text-left text-sm-right">
                                                                <button id="review_submit" type="submit" class="red_button review_submit_btn trans_300" value="submit">Gửi đánh giá của bạn</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>

        <!-- Tabs -->



    </div>

@endsection
@section('my_javacript')
    <script type="text/javascript">
        console.log({{$product->id}})
       // cập nhật số lượng giỏ hàng
       //  $(document).on("change", '.item-qty', function () {
       //      var product_id = $(this).attr('data-id');
       //      var before_qty = $(this).attr('data-num');
       //      var qty = $(this).val();
       //
       //      if (qty == 0) {
       //          alert('Nhập số lượng phải lớn hơn 0');
       //          $(this).val(before_qty);
       //          return false;
       //      }
       //
       //      $.ajax({
       //          url: '/dat-hang/cap-nhat-gio-hang',
       //          type: 'get',
       //          data: {
       //              id : product_id,
       //              qty : qty
       //          }, // dữ liệu truyền sang nếu có
       //          dataType: "json", // kiểu dữ liệu trả về
       //          success: function (response) {
       //              console.log(response);
       //              // success
       //              if (response.status == true) {
       //                  $('#my-cart').html(response.data);
       //              }
       //
       //              location.reload();
       //          },
       //
       //          error: function (e) { // lỗi nếu có
       //              console.log(e.message);
       //          }
       //
       //      });
       //
       //  });


        var button = document.querySelector('button#review_submit') ;
        button.addEventListener('click',function () {
            var name = document.getElementById('review_name').value;
            var email = document.getElementById('review_email').value;
            var phone = document.getElementById('review_phone').value;
            var message = document.getElementById('review_message').value;
            var ra_number = document.querySelectorAll('.user_star_rating .fa-star');
            var d = ra_number.length;

            $.ajax({
                url:'/danh-gia',
                type:'GET',
                data :
                    {'name': name,
                        'email': email,
                        'phone': phone,
                        'message':message,
                        'ra_number':d,
                        'id_product': {{$product->id}}
                    },
                datatype: 'json'

            }).done(function (data) {
                    location.reload();
            })

        });

    </script>
@endsection
