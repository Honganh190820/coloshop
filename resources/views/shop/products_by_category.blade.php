@extends('shop.layouts.main')

@section('content')
    <div style="margin-top: 20px;" class="container product_section_container">
        <div class="row">
            <div class="col product_section clearfix">

                <!-- Breadcrumbs -->

                <div class="breadcrumbs d-flex flex-row align-items-center">
                    <ul>
                        <li><a href="/">Home</a></li>
                        <li class="active"><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i>{{$category->name}}</a></li>
                    </ul>
                </div>

                <!-- Sidebar -->

                <div class="sidebar">
                    <div class="sidebar_section">
                        <div class="sidebar_title">
                            <h5>Danh mục sản phẩm</h5>
                        </div>
                        <ul class="sidebar_categories">
                            @foreach($categories as $item)
                            <li><a href="{{route('shop.products_by_category', ['slug' => $item->slug])}}">{{$item->name}}</a></li>
                            @endforeach
                        </ul>
                    </div>

                    <!-- Price Range Filtering -->
                    <div class="sidebar_section">
                        <div class="sidebar_title">
                            <h5>Lọc theo giá</h5>
                        </div>
                        <p>
                            <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
                        </p>
                        <div id="slider-range"></div>
                        <div class="filter_button"><span>LỌc</span></div>
                    </div>


                </div>

                <!-- Main Content -->

                <div class="main_content">

                    <!-- Products -->

                    <div class="products_iso">
                        <div class="row">
                            <div class="col">

                                <!-- Product Grid -->

                                <div class="product-grid">

                                    <!-- Product 1 -->
                                    @if($product != null)
                                        @foreach($product as $item)
                                    <div class="product-item men">
                                        <div class="product discount product_filter" >
                                            <div  class="product_image">
                                                <a href="{{route('shop.detailProduct',['slug' => $item->slug,'id' => $item->id])}}"><img height="220px" src="{{asset($item->image)}}" alt="" ></a>
                                            </div>
                                            <div class="favorite favorite_left"></div>
                                            @if($item->is_hot != 0)
                                            <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>Hot</span></div>
                                            @endif

                                            <div class="product_info">
                                                <h6 class="product_name"><a href="{{route('shop.detailProduct',['slug' => $item->slug,'id' => $item->id])}}">{{substr($item->name, 0, 32)}}</a></h6>
                                                @if($item->sale==0)
                                                    <div class="product_price">{{ number_format( $item->price)}} <sup>đ</sup></div>
                                                @else
{{--                                                    <div class="original_price">{{ number_format($item->price)}} <sup>đ</sup></div>--}}
                                                    <div class="product_price">{{number_format($item->sale)}} <sup>đ</sup> <sup class="original_price">{{ number_format($item->price)}} <sup>đ</sup></sup></div>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="red_button add_to_cart_button" style="margin-left: 0px;width: 217px"><a href="{{ route('shop.cart.add-to-cart', ['id' => $item->id]) }}"> <i class="fa fa-shopping-cart" aria-hidden="true"></i> Thêm vào giỏ hàng</a></div>
                                    </div>
                                        @endforeach
                                    @endif

                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{{--    <script src="/backend/bower_components/jquery/dist/jquery.min.js"></script>--}}
{{--    <!-- jQuery UI 1.11.4 -->--}}
{{--    <script src="/backend/bower_components/jquery-ui/jquery-ui.min.js"></script>--}}
{{--<script>--}}
{{--    $('.filter_button').click(function () {--}}
{{--        var start =1000/100* parseFloat(document.getElementById('start').style.left) ;--}}

{{--        var end = document.getElementById('end').value;--}}
{{--        console.log(start);--}}
{{--    })--}}
{{--</script>--}}
@endsection

