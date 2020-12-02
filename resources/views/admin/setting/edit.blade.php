@extends('admin.layouts.main')
@section('content')
    <style>.w-50 { width: 50% }</style>
    <section class="content-header">
        <h1>
            Chỉnh sửa <a href="" class="btn btn-success pull-right"><i
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
                        <h3 class="box-title">Thông tin</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="{{route('admin.setting.update', ['id' => $setting->id ])}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên công ty</label>
                                <input value="{{ $setting->company }}" type="text" class="form-control" id="company" name="company">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Address</label>
                                <input value="{{ $setting->address }}" type="text" class="form-control" id="address" name="address">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputFile">Thay đổi ảnh</label>
                                <input type="file" id="new_image" name="new_image"><br>
                                @if ($setting->image)
                                    <img src="{{asset($setting->image)}}" width="200">
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Phone</label>
                                <input value="{{ $setting->phone }}" type="text" class="form-control" id="phone" name="phone">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input value="{{ $setting->email }}" type="text" class="form-control" id="email" name="email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Content</label>
                                <textarea name="content" id="" cols="106" rows="2">{{ $setting->content }}</textarea>
                            </div>

                            <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Cập Nhật</button>
                            <input type="reset" class="btn btn-default pull-right" value="Reset">
                        </div>
                        </div>
                    </form>
                </div>
                <!-- /.box -->
            </div><!-- /.row -->
        </div>
    </section>

@endsection


