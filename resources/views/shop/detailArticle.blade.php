@extends('shop.layouts.main')
@section('content')
    <div style="margin-top: 20px;" class="container single_product_container">
        <div class="row">
            <div class="col product_section clearfix">

                <!-- Breadcrumbs -->

                <div class="breadcrumbs d-flex flex-row align-items-center">
                    <ul>
                        <li><a href="/">Trang chủ</a></li>
                        <li><a href="/list-bai-viet/list"><i class="fa fa-angle-right" aria-hidden="true"></i>Tin tức</a></li>
                        <li class="active"><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i>{{$article->title}}</a></li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="container">
            <div class="row">

                <div class="col-lg-9">
                    <div class="product_details">
                        <div class="product_details_title">
                            <h2>{{$article->title}}</h2>
                            <p>{!! $article->description !!}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
