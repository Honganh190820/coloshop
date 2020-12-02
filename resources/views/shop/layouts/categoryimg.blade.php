{{--<div class="banner">--}}
{{--    <div class="container">--}}
{{--        <div class="row">--}}
{{--            @foreach($categories as $item)--}}
{{--                <div class="col-md-4">--}}
{{--                        <div class="banner_item align-items-center">--}}
{{--                        <div class="banner_category">--}}
{{--                            <a href="{{route('shop.products_by_category', ['slug' => $item->slug])}}"> <img width="300px" height="250px" src="{{asset($item->image)}}" alt=""></a>--}}
{{--                        </div>--}}
{{--                        </div>--}}
{{--                </div>--}}
{{--            @endforeach--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}
<div class="banner">
    <div class="container">
        <div class="row">
            @foreach($categories as $item)
            <div class="col-md-4">
                <div class="banner_item align-items-center" style="background-image:url({{asset($item->image)}})">
                    <div class="banner_category">
                        <a href="{{route('shop.products_by_category', ['slug' => $item->slug])}}">{{$item->name}}</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
