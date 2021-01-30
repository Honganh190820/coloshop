@extends('admin.layouts.main')
@section('content')
    <style>tr td:first-child {max-width: 250px}</style>
    <section class="content-header">
        <h1>
            <span class="cat-name">Từ khóa tìm kiếm "{{ $keyword }}" ({{ $totalResult }})</span>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <div class="box-tools">
                            <div class="input-group input-group-sm hidden-xs" style="width: 150px;">
                                <form method="GET" action="{{ route('admin.search') }}" id="custom-search-form" class="form-search form-horizontal pull-right">
                                    <input style="margin-right: 38px" type="text" value="{{ isset($keyword) ? $keyword : '' }}" name="tu-khoa" class="form-control pull-right"
                                           placeholder="Search">

                                    {{--                            <div class="input-group-btn">--}}
                                    <button style="margin-left: 130px; margin-top: -57px; height: 35px" type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
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
                                <th style="max-with:200px">Tên sản phẩm</th>
                                <th>Hình ảnh</th>
                                <th>Category_id</th>
                                <th>Hiển thị</th>
                                <th>Tóm tắt</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($products as $key => $item)
                                <tr class="item-{{ $item->id }}"> <!-- Thêm Class Cho Dòng -->
                                    <td>{{ ($key + 1) }}</td>
                                    <td>{{ substr($item->name, 0, 50) }}</td>
                                    <td>
                                    @if ($item->image) <!-- Kiểm tra hình ảnh tồn tại -->
                                        <img src="{{ asset($item->image) }}" width="50" height="50">
                                        @endif
                                    </td>
                                    <td>{{$item->category_id}}</td>
                                    <td>{{ ($item->is_active == 1) ? 'Hiển thị' : 'Ẩn' }}</td>
                                    <td>{!!substr($item->summary, 0, 50)!!}</td>
                                    <td class="text-center">
                                        <a href="{{ route('admin.product.edit', ['id'=> $item->id]) }}" class="btn btn-flat btn-info">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <!-- Thêm sự kiện onlick cho nút xóa -->
                                        <a href="javascript:void(0)" class="btn btn-flat btn-danger" onclick="destroyModel('article', {{ $item->id }})" >
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
{{--                {{ $data->links() }}--}}
            </div>
        </div>
        <!-- /.row -->
    </section>
@endsection
