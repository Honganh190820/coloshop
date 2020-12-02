@if(session('cart'))
    @php
        $cart = session('cart');
        $products = $cart->products;
        $totalPrice = $cart->totalPrice;
        $totalQty = $cart->totalQty;
        $discount = $cart->discount;
        $coupon = $cart->coupon;
        $payment = $totalPrice - $discount;
    @endphp

    <form action="{{ route('shop.cart.check-coupon') }}" method="get">
        <div style="width: 300px; float: right; margin-bottom: 10px;" class="input-group">
            <input id="err" value="{{ $coupon }}" name="coupon_code" style="width: 200px; float: right" type="text" class="form-control" placeholder="Nhập mã khuyến mại">
            <span class="input-group-btn">
                            <button style="color: white; background: #e3007b; border-color: #e3007b;" class="btn btn-default" type="submit">Áp dụng</button>
                        </span>

        </div>
    </form>
    <p id="errors"  style="text-align: right;display:none;color: red;transform: translate(-5px,8px);text-transform: uppercase">mã giảm giá không được hỗ trợ</p>
    @if($errors->any())
        @foreach($errors as $error)
            <p  style="text-align: right;color: red;transform: translate(-5px,8px);text-transform: uppercase">{{$error}}</p>
        @endforeach
    @endif


{{--<from class="cart" action="{{ route('shop.cart.check-coupon') }}" method="get">--}}
    <h4 class="">Giỏ hàng</h4>

    <table class="table table-striped" id="cart-summary">
        <thead>
        <tr>
            <th class="cart-product">Ảnh sản phẩm</th>
            <th class="cart-description text-center">Thông tin Sản phẩm</th>
            <th class="cart-unit text-center">Đơn giá</th>
            <th class="cart_quantity text-center">Số lượng</th>
            <th class="cart-total text-right">Tổng giá</th>
            <th class="cart-delete text-center">&nbsp;</th>
        </tr>
        </thead>
        <tbody>
        @foreach($products as $product)
        <tr>
            <td class="cart-product">
                <a href="">
                    <img width="100px" src="{{ asset($product['item']->image) }}" alt="{{ $product['item']->name }}">
                </a>
            </td>
            <td class="cart-description">
                <p class="product-name"><a href="#">{{ $product['item']->name }}</a></p>
                <small>SKU : {{ $product['item']->sku }}</small>
            </td>
            <td class="cart-unit">
                <ul class="price text-right">
                    @if($product['item']->sale==0)
                        <span class="product_price">{{ number_format( $product['item']->price)}} <sup>đ</sup></span>
                    @else
                        <span class="product_price">{{number_format($product['item']->sale)}} <sup>đ</sup></span>
                    @endif
                </ul>
            </td>
            <td class="cart_quantity text-center">
                <div class="">
                    <input style="width: 50px" min="1"  class="cart-plus-minus item-qty" data-id="{{ $product['item']->id }}" data-num="{{ $product['qty'] }}" type="number" name="qty" value="{{ $product['qty'] }}">
                </div>
            </td>
            <td class="cart-total">
                @if($product['item']->sale==0)
                    <span class="price">{{ number_format($product['qty'] * $product['item']->price ,0,",",".") }} đ</span>
                @else

                    <span class="price">{{ number_format($product['qty'] * $product['item']->sale ,0,",",".") }}
                        đ</span>
                @endif

            </td>
            <td class="cart-delete text-center">
                <a data-id="{{ $product['item']->id }}"
                   class="cart_quantity_delete remove-to-cart" title="Xóa sản phẩm">
                    <i class="fa fa-trash-o"></i></a>
            </td>
        </tr>
        @endforeach
        </tbody>
        <tfoot>
        <tr>
            <td class="text-right" colspan="4">Tạm tính</td>
            <td class="price" colspan="2">
                <span>{{ number_format($totalPrice ,0,",",".") }} đ</span>
            </td>
        </tr>
        <tr>
            <td class="text-right" colspan="4">Giảm giá</td>
            <td class="price" colspan="2"><span>- {{ number_format($discount ,0,",",".") }} đ</span></td>
        </tr>
        <tr>
            <td class="text-right" colspan="4">Thanh toán</td>
            <td class="price" colspan="2"><span style="color: red">{{ number_format($payment ,0,",",".") }} đ</span></td>
        </tr>
        </tfoot>
    </table>

</from>
@section('my_javacript')
    <script type="text/javascript">
        var check = {{ $totalPrice }};
        if(check < 300000){
            $('.btn-default').prop('disabled','disabled');
            $('#err').change(function () {
                $('#errors').css('display','block');
                setTimeout(function () {
                    $('#errors').css('display','none');
                },4000)
            })
        };

        $(function () {

            // xóa sản phẩm khỏi giỏ hàng
            $(document).on("click", '.remove-to-cart', function () {
                var result = confirm("Bạn có chắc chắn muốn xóa sản phẩm này khỏi giỏ hàng ?");
                if (result) {
                    var product_id = $(this).attr('data-id');
                    $.ajax({
                        url: '/dat-hang/xoa-sp-gio-hang/'+product_id,
                        type: 'get',
                        data: {
                            id : product_id
                        }, // dữ liệu truyền sang nếu có
                        dataType: "HTML", // kiểu dữ liệu trả về
                        success: function (response) {
                            $('#my-cart').html(response);
                            location.reload();
                        },
                        error: function (e) { // lỗi nếu có
                            console.log(e.message);
                        }
                    });
                }
            });

            // cập nhật số lượng giỏ hàng
            //$('.item-qty').change(function () {
            $(document).on("change", '.item-qty', function () {
                var product_id = $(this).attr('data-id');
                var before_qty = $(this).attr('data-num');
                var qty = $(this).val();

                if (qty == 0) {
                    alert('Nhập số lượng phải lớn hơn 0');
                    $(this).val(before_qty);
                    return false;
                }

                $.ajax({
                    url: '/dat-hang/cap-nhat-gio-hang',
                    type: 'get',
                    data: {
                        id : product_id,
                        qty : qty
                    }, // dữ liệu truyền sang nếu có
                    dataType: "json", // kiểu dữ liệu trả về
                    success: function (response) {
                        console.log(response);
                        // success
                        if (response.status == true) {
                            $('#my-cart').html(response.data);
                        }

                        location.reload();
                    },

                    error: function (e) { // lỗi nếu có
                        console.log(e.message);
                    }

                });

            });
        })
    </script>
@endsection
@else
    <style>
        .buyother {
            display: block;
            overflow: hidden;
            background: #fff;
            line-height: 40px;
            text-align: center;
            margin: 15px auto;
            width: 300px;
            font-size: 14px;
            color: #288ad6;
            font-weight: 600;
            text-transform: uppercase;
            border: 1px solid #288ad6;
            border-radius: 4px;
        }
    </style>
        <h3 class="text-center"><i class="fa fa-opencart"></i>Bạn chưa có sản phẩm nào trong giỏ hàng</h3>
        <a href="/" class="buyother"><i class="fa fa-chevron-left"></i> Về trang chủ</a>
@endif
