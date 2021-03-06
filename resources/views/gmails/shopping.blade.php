<div style="border-style: double">
    <div style="padding: 40px">
        <div>
            <h3>Colo Shop</h3>
            <p>Số điện thoại: 0969422308 | email: coloshop@gmail.com</p>
            <p>Địa chỉ: 25 Vũ Ngọc Phan, Láng Hạ, Hà Nội</p>
        </div>
        <hr>
        {{--<base href="{{asset()}}">--}}
        <div style="text-align: center">
            <h2 style="color: red;">Thông tin chi tiết hóa đơn</h2>
            <h3>Hóa đơn số: {{$order->code}} </h3>
            <p>Ngày đặt: {{$order->created_at}}</p>
        </div>
        <hr>
        <div>
            <h2>Thông tin khách hàng</h2>
            <p>Họ tên khách hàng: {{$order->fullname}} </p>
            <p>Địa chỉ: {{$order->address}} </p>
            <p>Số điện thoại: {{$order->phone}} </p>
            <p>Ghi chú: {{$order->note}}</p>
        </div>
        <p style="text-align: center">Cảm ơn quý khách đã mua hàng</p>
        @foreach($order->details as $item)
            <table style="border: 1px solid">
                <tr style="border: 1px solid">
                    <th style="border: 1px solid">Tên sản phẩm đã đặt</th>
                    <th style="border: 1px solid">Ảnh</th>
                    <th style="border: 1px solid">Số lượng</th>
                    <th style="border: 1px solid">Giá tiền</th>
                </tr>
                <tr style="border: 1px solid">
                    <td style="border: 1px solid">{{$item->name}}</td>
                    <td style="border: 1px solid">{{asset($item->image)}}</td>
                    <td style="border: 1px solid">{{$item->qty}}</td>
                    <td style="border: 1px solid">{{number_format($item->price)}}</td>
                </tr>
            </table>
        @endforeach

        <ul>
            <li style="color: red">
                <b>Tổng tiền thanh toán: {{$order->total}} <sup>đ</sup></b>
            </li>
        </ul>
        <br>
        <br>
        <div style="margin: 0% 0% 5% 60%;width: 300px;">
            <h4 style="text-align: center">Người bán hàng</h4>
            <div style="border: 5px solid red; color: red; text-align: center">
                <h3>Colo shop</h3>
                <p>Ngày kí: {{$order->created_at}}</p>
            </div>
        </div>
    </div>
</div>

