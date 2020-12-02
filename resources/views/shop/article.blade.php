@extends('shop.layouts.main')

@section('content')
    <div style="margin-top: 20px;" class="container single_product_container">
        <div class="row">
            <div class="col product_section clearfix">

                <!-- Breadcrumbs -->

                <div class="breadcrumbs d-flex flex-row align-items-center">
                    <ul>
                        <li><a href="index.html">Trang chủ</a></li>
                        <li class="active"><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Tin tức</a></li>
                    </ul>
                </div>
                <div class="blogs">
                    <div class="container">
                        <div class="row">
                            <div class="col text-center">
                                <div class="section_title">
                                    <h2>Tin mới nhất</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row blogs_container">
                            @foreach($article as $item)
                            <div style="padding-bottom: 30px" class="col-lg-4 blog_item_col">
                                <div class="blog_item">
                                    <div class="blog_background" style="background-image:url({{asset($item->image)}}); background-size: 300px 250px;  "></div>
                                    <div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
                                        <h4 class="blog_title"><a style="color: black; " href="{{route('shop.detailArticle',['slug' => $item->slug])}}">{{$item->title}}</a></h4>
                                        <span class="blog_meta">{{$item->created_at}}</span>
                                        <a class="blog_more" href="{{route('shop.detailArticle',['slug' => $item->slug])}}">Xem chi tiết</a>
                                    </div>
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                    {{$article->links()}}
            </div>
        </div>
    </div>
    </div>
@endsection
