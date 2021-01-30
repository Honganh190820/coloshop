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
                                    Sửa thông tin sản phẩm
                                </h3>
                            </div>
                            <div class="col-md-1" style="margin-top: 10px;">
                                <a class="btn btn-success " href="{{route('admin.product.index')}}"><span class="glyphicon glyphicon-repeat"></span> Quay lại danh sách</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="{{route('admin.product.update', ['id' => $product->id ])}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên sản phẩm</label>
                                <input value="{{ $product->name }}" type="text" class="form-control" id="name" name="name">
                                @if ($errors->has('name'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('name') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Thay đổi ảnh sản phẩm</label>
                                <input type="file" id="new_image" name="new_image"><br>
                                @if ($product->image)
                                    <img src="{{asset($product->image)}}" width="200">
                                @endif
                                @if ($errors->has('image'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('image') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Thay đổi ảnh sản phẩm 2</label>
                                <input type="file" id="new_image2" name="new_image2"><br>
                                @if ($product->image2)
                                    <img src="{{asset($product->image2)}}" width="200">
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Thay đổi ảnh sản phẩm 3</label>
                                <input type="file" id="new_image3" name="new_image3"><br>
                                @if ($product->image3)
                                    <img src="{{asset($product->image3)}}" width="200">
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Số lượng</label>
                                <input type="number" class="form-control w-50" id="stock" name="stock" value="{{ $product->stock }}">
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="exampleInputFile">Giá gốc (vnđ)</label>
                                        <input type="number" class="form-control" id="price" name="price" value="{{ $product->price }}">
                                    </div>
                                </div>
                                <!-- /.col-lg-6 -->
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="exampleInputFile">Giá khuyến mại (vnđ)</label>
                                        <input type="number" class="form-control" id="sale" name="sale" value="{{ $product->sale }}">
                                    </div>
                                </div>
                                <!-- /.col-lg-6 -->
                            </div>
                            <div class="form-group">
                                <label>Danh mục sản phẩm</label>
                                <select class="form-control w-50" name="category_id">
                                    <option value="0">-- Chọn danh mục --</option>
                                    @foreach($categories as $category)
                                        <option {{ ($product->category_id == $category->id ? 'selected':'') }} value="{{ $category -> id }}">{{ $category -> name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Mã hàng (SKU)</label>
                                <input  value="{{ $product->sku }}" type="text" class="form-control w-50" id="sku" name="sku" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Vị trí</label>
                                <input type="number" class="form-control w-50" id="position" name="position" value="{{ $product->position }}">
                            </div>
                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input {{ ($product->is_active) ? 'checked':'' }} type="checkbox" value="1" name="is_active"> <b>Trạng thái</b>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input {{ ($product->is_hot) ? 'checked':'' }} type="checkbox" value="1" name="is_hot"> <b>Sản phẩm hot</b>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Liên kết (url) tùy chỉnh</label>
                                <input type="text" class="form-control" id="url" name="url" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Tóm tắt</label>
                                <textarea id="editor3" name="summary" class="form-control" rows="10" >{{ $product->summary }}</textarea>
                                @if ($errors->has('summary'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('summary') }}</p>
                                @endif
                            </div>

                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea id="editor1" name="description" class="form-control" rows="10" >{{ $product->description }}</textarea>
                                @if ($errors->has('description'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('description') }}</p>
                                @endif
                            </div>

                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Cập nhật</button>
                            <input type="reset" class="btn btn-default pull-right" value="Reset">
                        </div>
                    </form>
                </div>
                <!-- /.box -->
            </div>
            </form>
        </div>
        <!-- /.row -->
    </section>
@endsection

@section('my_javascript')

        <script> CKEDITOR.replace('editor1'); </script>
    <script> CKEDITOR.replace('editor2'); </script>
    <script> CKEDITOR.replace('editor3'); </script>

@endsection
