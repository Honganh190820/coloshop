<style>
    #custom-search-form {
        margin:0;
        margin-top: 5px;
        padding: 0;
    }
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
</style>
@extends('admin.layouts.main')
@section('content')
    <style>tr td:first-child {max-width: 250px}</style>
    <section class="content-header">
        <h1>
            Danh Sách Sản Phẩm <a href="{{route('admin.product.create')}}" class="btn btn-flat btn-info"><i class="fa fa-plus"></i> Thêm SP</a>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
{{--                <div class="input-group input-group-sm hidden-xs" style="width: 150px;">--}}
{{--                <div class="span12">--}}
{{--                    <form method="GET" action="{{ route('admin.search') }}" id="custom-search-form" class="form-search form-horizontal pull-right">--}}
{{--                            <input style="margin-left:25px" value="{{ isset($keyword) ? $keyword : '' }}" name="tu-khoa" type="text" class="search-query" placeholder="Search">--}}
{{--                            <button style="height: 25px; margin-bottom: -30px" type="submit" class="src-btn"><i class="ion-ios-search-strong"></i></button>--}}
{{--                    </form>--}}
{{--                </div>--}}
{{--                            </div>--}}
                <div class="box-header">
                    <div class="box-tools">
                        <div class="input-group input-group-sm hidden-xs" style="width: 150px;">
                            <form method="GET" action="{{ route('admin.search') }}" id="custom-search-form" class="form-search form-horizontal pull-right">
                            <input style="margin-right: 36px" type="text" value="{{ isset($keyword) ? $keyword : '' }}" name="tu-khoa" class="form-control pull-right"
                                   placeholder="Search">

{{--                            <div class="input-group-btn">--}}
                                <button style="margin-left: 130px; margin-top: -35px; height: 35px" type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
{{--                            </div>--}}
                            </form>
                        </div>
                    </div>
                </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>TT</th>
                                <th style="max-with:200px">Tên SP</th>
                                <th>Hình ảnh</th>
                                <th>Người Tạo</th>
                                <th>Số lượng</th>
                                <th>Giá KM</th>
                                <th>Giá Gốc</th>
                                <th>Trạng thái</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($data as $key => $item)
                                <tr class="item-{{ $item->id }}"> <!-- Thêm Class Cho Dòng -->
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ substr($item->name, 0, 50) }}</td>
                                    <td>
                                    @if ($item->image) <!-- Kiểm tra hình ảnh tồn tại -->
                                        <img src="{{asset($item->image)}}" width="50" height="50">
                                        @endif
                                    </td>
                                    <td>{{ $item->user->name ?? 'trống'}}</td>
                                    <td>{{ $item->stock }}</td>
                                    <td>{{ $item->sale }}</td>
                                    <td>{{ $item->price }}</td>
                                    <td>{{ ($item->is_active == 1) ? 'Hiển thị' : 'Ẩn' }}</td>
                                    <td class="text-center">
                                        <a href="{{route('admin.product.show', ['id'=> $item->id ])}}" class="btn btn-default">
                                            <i class='far fa-eye'></i>
                                        </a>
                                        <a href="{{route('admin.product.edit', ['id'=> $item->id])}}" class="btn btn-flat btn-info">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <!-- Thêm sự kiện onlick cho nút xóa -->
                                        <a href="javascript:void(0)" class="btn btn-flat btn-danger" onclick="destroyModel('product', {{ $item->id }})" >
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                    <!-- /.box-body -->

                </div>
                <!-- /.box -->
                {{ $data->links() }}
            </div>
        </div>
        <!-- /.row -->
    </section>
@endsection
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
