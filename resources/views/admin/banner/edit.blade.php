@extends('admin.layouts.main')
@section('content')
    <style>.w-50 { width: 50% }</style>
    <section class="content-header">
        <h1>
            Chỉnh sửa <a href="{{route('admin.banner.index')}}" class="btn btn-success pull-right"><i
                    class="fa fa-list"></i> Danh Sách </a>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-9">
                <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thông tin bài viết</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="{{route('admin.banner.update', ['id' => $banner->id ])}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên sản phẩm</label>
                                <input value="{{ $banner->title }}" type="text" class="form-control" id="title" name="title">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Thay đổi ảnh</label>
                                <input type="file" id="new_image" name="new_image"><br>
                                @if ($banner->image)
                                    <img src="{{asset($banner->image)}}" width="200">
                                @endif
                            </div>
                            <!-- /.col-lg-6 -->
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Vị trí</label>
                            <input type="number" class="form-control w-50" id="position" name="position" value="{{ $banner->position }}">
                        </div>
                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <input {{ ($banner->is_active) ? 'checked':'' }} type="checkbox" value="1" name="is_active"> <b>Hiển thị</b>
                                </label>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Cập Nhật</button>
                            <input type="reset" class="btn btn-default pull-right" value="Reset">
                        </div>
                    </form>
                </div>
                <!-- /.box -->
            </div><!-- /.row -->
        </div>
    </section>

@endsection
