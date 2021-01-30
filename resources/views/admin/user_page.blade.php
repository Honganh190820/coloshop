@extends('admin.layouts.main')
@section('content')
    <div ui-view="" class="ng-scope">
        <section class="content-header ng-scope">
            <h1>THÔNG TIN TÀI KHOẢN</h1>
        </section>
        <!-- Main content -->
        <section class="content ng-scope">
            <div class="container-fluid">
                <div style="background: white;width: 1034px;" class="row">
                    <div class="col-md-3">

                        <!-- Profile Image -->
                        <div style="margin-top: 32px;" class="card card-primary card-outline">
                            <div class="card-body box-profile">
                                <h3 class="profile-username text-center ng-binding">{{ Auth::user()->name }}</h3>
                                <h4 class="text-muted text-center">ID:{{ Auth::user()->id }}</h4>
                                <div class="text-center position-relative">
                                    <img class="profile-user-img img-fluid img-circle" src="{{ Auth::user()->image }}" alt="User profile picture">
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="profile-username text-center">
                                            <i class="fa fa-key" aria-hidden="true">&nbsp</i>
                                            Quyền: {{ (Auth::user()->role_id == 1) ? 'Manager' : 'Admin'}}
                                        </h3>
                                    </div>
                                    <div class="card-body"></div>
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                    <div class="col-md-9">
                        <div class="card">
                            <div class="card-body">
                                <div class="tab-content">
                                    <div style="margin-top: 30px;" class="tab-pane active" id="settings">

                                        <form  name="profileForm" class="form-horizontal ng-pristine ng-valid-email ng-valid ng-valid-required" ng-submit="profileSubmit(profileForm.$valid)">
                                            <div class="form-group row" ng-class="{ 'was-validated' : profileForm.name.$invalid &amp;&amp; !profileForm.name.$pristine }">
                                                <label for="inputName" class="col-sm-2 col-form-label">Họ tên:</label>
                                                <div class="col-sm-10">
                                                    <p>{{ Auth::user()->name }}</p>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">Giới tính:</label>
                                                @if(Auth::user()->gender === 1)
                                                <div class="col-sm-2">
                                                    <p>Nam</p>
                                                </div>
                                                @else
                                                <div class="col-sm-2">
                                                    <p>Nữ</p>
                                                </div>
                                                @endif
                                            </div>

{{--                                            <div class="form-group row">--}}
{{--                                                <label for="inputBirdDay" class="col-sm-2 col-form-label">Ngày sinh:</label>--}}
{{--                                                <div class="col-sm-10">--}}
{{--                                                    <input ng-disabled="true" type="text" class="form-control ng-pristine ng-untouched ng-valid ng-not-empty" id="inputBirdDay" placeholder="" ng-model="profileData.birdDay" disabled="disabled">--}}
{{--                                                </div>--}}
{{--                                            </div>--}}
                                            <div class="form-group row" ng-class="{ 'was-validated' : profileForm.name.$invalid &amp;&amp; !profileForm.name.$pristine }">
                                                <label for="inputName" class="col-sm-2 col-form-label">Số CMND:</label>
                                                <div class="col-sm-10">
                                                    <p>{{ Auth::user()->CMND }}</p>
                                                </div>
                                            </div>
                                            <div class="form-group row" ng-class="{ 'was-validated' : profileForm.name.$invalid &amp;&amp; !profileForm.name.$pristine }">
                                                <label for="inputName" class="col-sm-2 col-form-label">Địa chỉ:</label>
                                                <div class="col-sm-10">
                                                    <p>{{ Auth::user()->address }}</p>
                                                </div>
                                            </div>
                                            <div class="form-group row" ng-class="{ 'was-validated' : profileForm.name.$invalid &amp;&amp; !profileForm.name.$pristine }">
                                                <label for="inputName" class="col-sm-2 col-form-label">Email:</label>
                                                <div class="col-sm-10">
                                                    <p>{{ Auth::user()->email }}</p>
                                                </div>
                                            </div>
                                            <div class="form-group row" ng-class="{ 'was-validated' : profileForm.phone.$invalid &amp;&amp; !profileForm.phone.$pristine  }">
                                                <label for="inputPhone" class="col-sm-2 col-form-label">Số điện thoại:</label>
                                                <div class="col-sm-10">
                                                    <p>{{ Auth::user()->phone }}</p>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                    <!-- /.tab-pane -->
                                </div>
                                <!-- /.tab-content -->
                            </div><!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
