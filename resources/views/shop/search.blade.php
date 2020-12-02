@extends('shop.layouts.main')
@section('content')
    <div style="margin-top: 20px;" class="container product_section_container">
        <div class="row">
            <div class="col product_section clearfix">

                <!-- Breadcrumbs -->

                <div class="breadcrumbs d-flex flex-row align-items-center">
                    <ul>
                        <li><a href="/">Trang chủ</a></li>
                        <li class="active"><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i>Tìm kiếm</a></li>
                    </ul>
                </div>

                </div>

                    <div class="products_iso">
                        <div class="row">
                            <div class="col">

                                <!-- Product Grid -->
                                <h4>
                                    @if(!empty($keyword == ''))
                                        <h5 style="text-align: center">Không có có kết quả tìm kiếm</h5>
                                    @else

                                    <span class="cat-name">Từ khóa tìm kiếm "{{ $keyword }}" ({{ $totalResult }})</span>
                                    @endif
                                </h4>
                                <div class="product-grid">

                                    <!-- Product 1 -->
{{--                                    @if(!empty($products == null))--}}
                                        @foreach($products as $item)
                                            <div class="product-item men">
                                                <div class="product discount product_filter">
                                                    <div class="product_image">
                                                        <img src="{{asset($item->image)}}" alt="">
                                                    </div>
                                                    <div class="favorite favorite_left"></div>
                                                    <div class="product_info">
                                                        <h6 class="product_name"><a href="{{route('shop.detailProduct',['slug' => $item->slug,'id'=>$item->id])}}">{{$item->name}}</a></h6>
                                                        @if($item->sale==0)
                                                            <div class="product_price">{{ number_format( $item->price)}} <sup>đ</sup></div>
                                                        @else
{{--                                                            <div class="original_price">{{ number_format($item->price)}} <sup>đ</sup></div>--}}
                                                            <div class="product_price">{{number_format($item->sale)}} <sup>đ</sup> <sup class="original_price">{{ number_format($item->price)}} <sup>đ</sup></sup></div>
                                                        @endif
                                                    </div>
                                                </div>
                                                <div class="red_button add_to_cart_button" style="margin-left: 0px;width: 284px"><a href="#">Thêm vào giỏ hàng</a></div>
                                            </div>
                                        @endforeach
{{--                                    @else--}}
{{--                                        <p>Không tìm thấy kết quả</p>--}}
{{--                                    @endif--}}

                                </div>
                                <div style="margin-top: 30px">

                                    {{$products->appends(['tu-khoa'=>$keyword])->links()}}

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

    </div>

@endsection
