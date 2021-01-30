@extends('admin.layouts.main')
@section('content')
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-9 col-lg-9">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <div class="row">
                            <div class="col-md-9">
                                <h3>
                                    Chi tiết sản phẩm
                                </h3>
                            </div>
                            <div class="col-md-1" style="margin-top: 10px;">
                                <a class="btn btn-success " href="{{route('admin.product.index')}}"><span class="glyphicon glyphicon-repeat"></span> Quay lại danh sách</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <td><b>Tên sản phẩm:</b></td>
                                <td>{{ $data->name }}</td>
                            </tr>
                            <tr>
                                <td><b>Đường dẫn Hình ảnh:</b></td>
                                <td>{{ $data->image }}</td>
                            </tr>
                            <tr>
                                <td><b>Sơ lược:</b></td>
                                <td>{!! $data->summary !!}</td>
                            </tr>
                            <tr>
                                <td><b>Mô tả:</b></td>
                                <td>{!! $data->description !!}</td>
                            </tr>
                            <tr>
                                <td><b>Giá gốc:</b></td>
                                <td>{{ number_format($data->price) }}</td>
                            </tr>
                            <tr>
                                <td><b>Giá khuyến mãi:</b></td>
                                <td>{{ number_format($data->sale) }}</td>
                            </tr>
                            <tr>
                                <td><b>Vị trí:</b></td>
                                <td>{{ $data->position }}</td>
                            </tr>
                            <tr>
                                <td><b>Trạng thái</b></td>
                                <td>@if($data->is_active ==0)Ẩn @else Hiển thị @endif</td>
                            </tr>
                            <tr>
                                <td><b>Sản phẩm hot:</b></td>
                                <td>@if( $data->is_hot ==0)Không hot @else Sản phẩm hot @endif</td>
                            </tr>

                            <tr>
                                <td><b>Danh mục sản phẩm:</b></td>
                                <td>{{ $category_name->name }}</td>
                            </tr>

                            </tbody></table>
                    </div>
                </div>
                <!-- /.box -->


            </div>
            <!--/.col (right) -->
        </div>
        <!-- /.row -->
    </section>
@endsection
