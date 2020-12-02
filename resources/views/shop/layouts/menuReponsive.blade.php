<div class="fs_menu_overlay"></div>
<div class="hamburger_menu">
    <div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    <div class="hamburger_menu_content text-right">
                <ul class="menu_top_nav">
                    <li class="menu_item"><a href="/">Trang chủ</a></li>
                    @foreach($categories as $item)
                        <li class="menu_item"><a href="{{route('shop.products_by_category', ['slug' => $item->slug])}}">{{$item->name}}</a></li>
                    @endforeach
                    <li class="menu_item"><a href="/bai-viet">Bài viết</a></li>
                    <li class="menu_item"><a href="/lien-he">Liên hệ</a></li>
                </ul>
    </div>
</div>
