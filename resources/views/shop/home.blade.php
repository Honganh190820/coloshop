
@extends('shop.layouts.main')

@section('content')
    <!-- Best Sellers -->
    <div class="new_arrivals">
        <div class="container">
            <div class="row">
                <div class="col text-center mx-3">
                    <div class="section_title new_arrivals_title">
                        <h2>Sản Phẩm</h2>
                    </div>
                </div>
            </div>
            <div class="row align-items-center">
                <div class="col text-center">
                    <div class="new_arrivals_sorting">
                        <ul class="arrivals_grid_sorting clearfix button-group filters-button-group">

                            <li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked" data-filter="*">Tất cả</li>
                            @foreach($list as $lists)
                            <li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".{{$lists['category']->slug}}">{{$lists['category']->name}}</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col">
                    <div class="product-grid" data-isotope="{ &quot;itemSelector&quot;: &quot;.product-item&quot;, &quot;layoutMode&quot;: &quot;fitRows&quot; }" style="position: relative; height: 760px;">

                        <!-- Product 1 -->
                        @foreach($list as $lists)
                            @foreach($lists['products'] as $a)
                        <div class="product-item {{$lists['category']->slug}}" style="position: absolute; left: 0px; top: 0px; width: 219px;height: 380px">

                            <div class="product discount product_filter" style="border-right: 1px solid rgb(233, 233, 233);">
                                <div class="product_image">
                                    <a href="{{route('shop.detailProduct',['slug' => $a->slug,'id'=>$a->id])}}"><img width="300px" height="250px" src="{{asset($a->image)}}" alt=""></a>
                                </div>
                                <div class="favorite favorite_left"></div>
                                @if($a->is_hot != 0)
                                <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>Hot</span></div>
                                @endif
                                <div class="product_info">
                                    <h6 class="product_name"><a href="{{route('shop.detailProduct',['slug' => $a->slug,'id'=>$a->id])}}">{{substr($a->name, 0, 30)}}</a></h6>
                                    @if($a->sale==0)
                                        <div class="product_price">{{ number_format( $a->price)}} <sup>đ</sup></div>
                                    @else

                                        <div class="product_price">{{number_format($a->sale)}} <sup>đ</sup>  <sup class="original_price">{{ number_format($a->price)}} <sup>đ</sup></sup></div>
                                    @endif
                                </div>
                            </div>
                            <div class="red_button add_to_cart_button" style="margin-left: 0px;width: 217px"><a href="{{ route('shop.cart.add-to-cart', ['id' => $a->id]) }}"> <i class="fa fa-shopping-cart" aria-hidden="true"></i> Thêm vào giỏ hàng</a></div>
                        </div>

                            @endforeach

                        @endforeach
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="benefit">
        <div class="container">
            <div class="row benefit_row">
                <div class="col-lg-3 benefit_col">
                    <div class="benefit_item d-flex flex-row align-items-center">
                        <div class="benefit_icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
                        <div class="benefit_content">
                            <h6>free shipping</h6>
                            <p>Suffered Alteration in Some Form</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 benefit_col">
                    <div class="benefit_item d-flex flex-row align-items-center">
                        <div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div>
                        <div class="benefit_content">
                            <h6>cach on delivery</h6>
                            <p>The Internet Tend To Repeat</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 benefit_col">
                    <div class="benefit_item d-flex flex-row align-items-center">
                        <div class="benefit_icon"><i class="fa fa-undo" aria-hidden="true"></i></div>
                        <div class="benefit_content">
                            <h6>45 days return</h6>
                            <p>Making it Look Like Readable</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 benefit_col">
                    <div class="benefit_item d-flex flex-row align-items-center">
                        <div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
                        <div class="benefit_content">
                            <h6>opening all week</h6>
                            <p>8AM - 09PM</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
