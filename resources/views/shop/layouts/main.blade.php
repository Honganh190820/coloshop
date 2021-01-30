<!DOCTYPE html>
<html lang="en">
<head>
    <title>Colo Shop</title>
    <meta charset="utf-8">
    <link rel="icon" href="{{asset($setting->image)}}" type="image/x-icon">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Colo Shop Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/shop/styles/bootstrap4/bootstrap.min.css">
    <link href="/shop/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/shop/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="/shop/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="/shop/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="/shop/styles/main_styles.css">
    <link rel="stylesheet" type="text/css" href="/shop/styles/responsive.css">

    <link rel="stylesheet" type="text/css" href="/shop/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="/shop/styles/categories_styles.css">
    <link rel="stylesheet" type="text/css" href="/shop/styles/categories_responsive.css">
    <link rel="stylesheet" type="text/css" href="/shop/styles/single_styles.css">
    <link rel="stylesheet" type="text/css" href="/shop/styles/single_responsive.css">
    <link rel="stylesheet" type="text/css" href="/shop/styles/contact_styles.css">
    <link rel="stylesheet" type="text/css" href="/shop/styles/contact_responsive.css">

</head>

<body>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0" nonce="0yozxGZA"></script>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0" nonce="WPDyJehB"></script>
<div class="super_container">

    <!-- Header -->

@include('shop.layouts.header')
@include('shop.layouts.menuReponsive')
@if(!isset($is_detail))
    @include('shop.layouts.slidebar')
@endif



   @yield('content')

    <!-- Footer -->

    @include('shop.layouts.footer')

</div>

{{--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>--}}

{{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--}}
<script src="/shop/js/jquery-3.2.1.min.js"></script>
<script src="/shop/styles/bootstrap4/popper.js"></script>
<script src="/shop/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/shop/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="/shop/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="/shop/plugins/easing/easing.js"></script>
<script src="/shop/js/custom.js"></script>
<script src="/shop/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="/shop/js/categories_custom.js"></script>
<script src="/shop/js/contact_custom.js"></script>
<script src="/shop/js/single_custom.js"></script>
{{--<script  type="text/javascript" src="/shop/js/jquery.js"></script>--}}
<script src="/shop/jquery.elevatezoom.js" type="text/javascript"></script>
@yield('my_javacript')

</body>

</html>
