@extends('admin.layouts.main')
@section('content')
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <div class="">
                            <div class="" >
                                <div class="row">
                                    <div class="col-md-9">
                                        <h3>
                                            Danh sách danh mục
                                        </h3>
                                    </div>
                                    <div class="col-md-1" style="margin-top: 17px;margin-left: 126px;">
                                        <a  class="btn btn-primary" href="{{ route('admin.category.create') }}"><span class="glyphicon glyphicon-plus"></span> Thêm mới</a>
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
                                <th>Tên</th>
                                <th>Hình ảnh</th>
                                <th>Danh mục cha</th>
                                <th>Vị trí</th>
                                <th>Trạng thái</th>
                                <th class="text-center">Hành động</th>

                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($data as $key => $item)
                                <tr class="item-{{ $item->id }}">
                                    <td>{{ $item->name }}</td>
                                    <td>
                                        @if ($item->image)
                                            <img src="{{ asset($item->image) }}" width="50" height="50">
                                        @endif
                                    </td>
                                    <td>{{ $item->parent_id }}</td>
                                    <td>{{ $item->position }}</td>
                                    <td>{{ $item->is_active }}</td>

                                    <td class="text-center">
                                        <a href="{{ route('admin.category.edit', [ 'id'=> $item->id ]) }}">
                                            <i class="fa fa-edit"></i>
                                        </a> |
                                        <a href="javascript:void(0)"  onclick="destroyModel('category', {{ $item->id }})" >
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix">
                        <ul class="pagination pagination-sm no-margin">
                            {{ $data->links() }}
                        </ul>
                    </div>
                </div>
                <!-- /.box -->
            </div>
        </div>
        <!-- /.row -->
    </section>
@endsection
