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
                                    Sửa danh mục
                                </h3>
                            </div>
                            <div class="col-md-1" style="margin-top: 10px;">
                                <a class="btn btn-success " href="{{route('admin.category.index')}}"><span class="glyphicon glyphicon-repeat"></span> Quay lại danh sách</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->

                    <form role="form" action="{{  route('admin.category.update', ['id' => $category->id ])}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="box-body">

{{--                            @if($errors->any())--}}
{{--                                <div class="alert alert-danger alert-dismissible">--}}
{{--                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>--}}
{{--                                    <h4><i class="icon fa fa-warning"></i> Lỗi!</h4>--}}
{{--                                    @foreach($errors->all() as $val)--}}
{{--                                        <p>{{ $val }}</p>--}}
{{--                                    @endforeach--}}
{{--                                </div>--}}
{{--                            @endif--}}

                            <div class="form-group">
                                <label>Danh mục cha</label>
                                <select class="form-control" name="parent_id">
                                    <option value="0">-- Chọn --</option>
                                    @foreach($data as $item)
                                        <option {{ ($category->parent_id == $item->id) ? 'selected' : '' }} value="{{ $item->id }}">{{ $item->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên danh mục</label>
                                <input value="{{ $category->name }}" type="text" class="form-control" id="name"
                                       name="name" placeholder="Nhập tên danh mục">
                                @if ($errors->has('name'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('name') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Thay đổi ảnh</label>
                                <input type="file" id="new_image" name="new_image" ><br>

                                @if ($item->image)
                                    <img src="{{ asset($category->image)}} " width="200">
                                @endif
                                @if ($errors->has('new_image'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('new_image') }}</p>
                                @endif
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input {{ ($category->is_active) ? 'checked' : '' }} type="checkbox" value="1"
                                           name="is_active"> Trạng thái
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Vị trí</label>
                                <input value="{{ $category->position }}" type="number" class="form-control" id="position"
                                       name="position" placeholder="Nhập tên vị trí">
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
                            <button type="submit" class="btn btn-primary">Lưu</button>
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
