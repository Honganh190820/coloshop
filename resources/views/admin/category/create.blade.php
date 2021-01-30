@extends('admin.layouts.main')
@section('content')
    <style>.w-50 { width: 50% }</style>
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-9 col-lg-9">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <div class="row">
                            <div class="col-md-9">
                                <h3>
                                    Thêm mới danh mục
                                </h3>
                            </div>
                            <div class="col-md-1" style="margin-top: 10px;">
                                <a class="btn btn-success " href="{{ route('admin.category.index') }}"><span class="glyphicon glyphicon-repeat"></span> Quay lại danh sách</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->

                    <form role="form" action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="box-body">

{{--                            @if($errors->any())--}}
{{--                                <div class="alert alert-danger alert-dismissible">--}}
{{--                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>--}}
{{--                                    <h4><i class="icon fa fa-warning"></i> Lỗi!</h4>--}}
{{--                                    @foreach($errors->all() as $error)--}}
{{--                                        <p>{{ $error }}</p>--}}
{{--                                    @endforeach--}}
{{--                                </div>--}}
{{--                            @endif--}}

                            <div class="form-group">
                                <label>Danh mục cha</label>
                                <select class="form-control" name="parent_id">
                                    <option value="0">-- chọn --</option>
                                    @foreach($data as $item)
                                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên danh mục</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên danh mục">
                                @if ($errors->has('name'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('name') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Ảnh</label>
                                <input type="file" id="image" name="image">
                                @if ($errors->has('image'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('image') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label>
                                    <input type="checkbox" value="1" name="is_active"> Hiển thị
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Vị trí</label>
                                <input type="number" class="form-control" id="position" name="position" value="0" min="0">
                            </div>
                                <div class="form-group">
                                    <label>Loại danh mục</label>
                                    <select class="form-control" name="type">
                                        <option value="1">Sản phẩm</option>
                                        <option value="2">Tin tức</option>
                                    </select>
                                </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Tạo</button>
                        </div>
                    </form>
                </div>
                <!-- /.box -->


            </div>
            <!--/.col (right) -->
        </div>
        <!-- /.row -->
    </section>
@endsection
