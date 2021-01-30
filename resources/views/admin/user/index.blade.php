@extends('admin.layouts.main')
@section('content')
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <div>
                            <div>
                                <div class="row">
                                    <div class="col-md-9">
                                        <h3>
                                            Danh sách người dùng
                                        </h3>
                                    </div>
                                    <div class="col-md-1" style="margin-top: 17px;margin-left: 126px;">
                                        <a  class="btn btn-primary" href="{{route('admin.user.create')}}"><span class="glyphicon glyphicon-plus"></span> Thêm mới</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>Họ tên</th>
                                <th>Email</th>
                                <th>Hình ảnh</th>
                                <th>Phân quyền</th>
                                <th>Trạng thái</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($data as $key => $item)
                                <tr class="item-{{ $item->id }}"> <!-- Thêm Class Cho Dòng -->
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->email }}</td>
                                    <td>
                                    @if ($item->image) <!-- Kiểm tra hình ảnh tồn tại -->
                                        <img src="{{asset($item->image)}}" width="70">
                                        @endif
                                    </td>
                                    <td>{{ ($item->role_id == 1) ? 'Manager' : 'Admin' }}</td>
                                    <td>{{ ($item->is_active == 1) ? 'Kích hoạt' : 'Chưa kích hoạt' }}</td>
                                    <td class="text-center">
                                        <a href="{{route('admin.user.edit', ['id'=> $item->id])}}"><i class="fa fa-edit"></i></a>

                                        |<!-- Thêm sự kiện onlick cho nút xóa -->
                                        <a href="javascript:void(0)" onclick="destroyModel('user', {{ $item->id }})" >
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
            </div>
        </div>
        <!-- /.row -->
    </section>
@endsection
