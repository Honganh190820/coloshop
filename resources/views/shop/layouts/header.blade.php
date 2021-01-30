<header class="header trans_300">

    <!-- Top Navigation -->

    <div class="top_nav">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="top_nav_left">Coloshop@gmail.com</div>
                </div>
                <div class="col-md-6 text-right">
                    <div class="top_nav_right">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Navigation -->

    <div class="main_nav_container">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-right">
                    <div class="logo_container">
{{--                        <a href="/"><img width="121px" src="{{asset($setting->image)}}" alt=""></a>--}}

                        <a href="/">colo<span>shop</span></a>
                    </div>
                    <nav class="navbar">
                        <ul class="navbar_menu">
                            <li><a href="/">Trang chủ</a></li>
                            @foreach($categories as $item)
                                @if($item->parent_id == 0)
                            <li><a href="{{route('shop.products_by_category', ['slug' => $item->slug])}}">{{$item->name}}</a></li>
                                @endif
                            @endforeach
                            <li><a href="/bai-viet">Bài viết</a></li>
                            <li><a href="/lien-he">Liên Hệ</a></li>

                        </ul>

                        <ul class="navbar_user">
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i style="margin-left: -47px;" class="fa fa-search " aria-hidden="true"></i>
                                </a>
                                <form action="{{route('shop.search')}}" method="get">
                                    <div style="margin-left: -115px;" class="dropdown-menu " aria-labelledby="navbarDropdown">
                                        <div style="width: 200px; padding-left: 5px" class="d-flex">
                                            <input style=" border-radius: 25px;" value="{{ isset($keyword) ? $keyword : '' }}" name="tu-khoa" class="form-control form-control-sm" type="text" placeholder="Search" aria-label="Search">
                                            <button style="width: 27px; color: #a4b0be;" class="btn btn-link my-2 my-sm-0 pr-4 " type="submit"><i class="fa fa-search " aria-hidden="true"></i></button>
                                        </div>
                                    </div>
                                </form>
                            </li>
                            <li class="checkout">
                                <a href="/dat-hang#my_cart">
                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                    <span id="checkout_items" class="checkout_items">
                                         @if(session('cart'))
                                            <span id="total-qty" class="" style="margin: 5px"> {{session('cart')->totalQty }} </span>
                                        @else
                                            <span id="total-qty" class="" style="margin: 5px"> 0 </span>
                                        @endif
                                    </span>
                                </a>
                            </li>
                        </ul>
                        <div class="hamburger_container">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>

