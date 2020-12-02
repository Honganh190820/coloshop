
<!-- Slider -->
@foreach($banners as $item)
<div class="main_slider" style="overflow: hidden">
    <a href=""><img src="{{asset($item->image)}}" alt=""></a>
</div>
@endforeach
<!-- Banner -->


