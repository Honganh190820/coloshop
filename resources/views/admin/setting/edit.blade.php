@extends('admin.layouts.main')
@section('content')
    <style>.w-50 { width: 50% }</style>
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-9">
                <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header with-border">
                        <div class="row">
                            <div class="col-md-9">
                                <h3>
                                    Setting
                                </h3>
                            </div>
                        </div>
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
                                @if ($errors->has('company'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('company') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Address</label>
                                <input value="{{ $setting->address }}" type="text" class="form-control" id="address" name="address">
                                @if ($errors->has('address'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('address') }}</p>
                                @endif
                            </div>

                            <div class="form-group">
                                <label for="exampleInputFile">Thay đổi ảnh</label>
                                <input type="file" id="new_image" name="new_image"><br>
                                @if ($setting->image)
                                    <img src="{{asset($setting->image)}}" width="200">
                                @endif
                                @if ($errors->has('image'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('image') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Phone</label>
                                <input value="{{ $setting->phone }}" type="number" class="form-control" id="phone" name="phone">
                                @if ($errors->has('phone'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('phone') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input value="{{ $setting->email }}" type="text" class="form-control" id="email" name="email">
                                @if ($errors->has('email'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('email') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Content</label>
                                <textarea class="form-control" name="content" id="" cols="106" rows="2">{{ $setting->content }}</textarea>
                                @if ($errors->has('content'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('content') }}</p>
                                @endif
                            </div>

                            <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Cập nhật</button>
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


