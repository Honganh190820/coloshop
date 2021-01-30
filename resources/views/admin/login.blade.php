<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Login</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <base href="{{ asset('') }}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Bootstrap 3.3.7 -->
{{--    <link rel="stylesheet" href="/backend/bower_components/bootstrap/dist/css/bootstrap.min.css">--}}
{{--    <!-- Font Awesome -->--}}
{{--    <link rel="stylesheet" href="/backend/bower_components/font-awesome/css/font-awesome.min.css">--}}
{{--    <!-- Ionicons -->--}}
{{--    <link rel="stylesheet" href="/backend/bower_components/Ionicons/css/ionicons.min.css">--}}
{{--    <!-- Theme style -->--}}
{{--    <link rel="stylesheet" href="/backend/dist/css/AdminLTE.min.css">--}}
{{--    <!-- iCheck -->--}}
    <link rel="stylesheet" href="/backend/plugins/iCheck/square/blue.css">
<!--===============================================================================================-->
    <link rel="icon" type="image/png" href="/backend/login/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/backend/login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/backend/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/backend/login/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/backend/login/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/backend/login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/backend/login/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/backend/login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/backend/login/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/backend/login/css/util.css">
    <link rel="stylesheet" type="text/css" href="/backend/login/css/main.css">
    <!--===============================================================================================-->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body>

<!-- /.login-box -->
<div class="limiter">
    <div class="container-login100" style="background-image: url('/backend/login/images/bg-01.jpg');">
        <div class="wrap-login100">
            <form role="form" action="{{route('postlogin')}}" method="post" class="login100-form validate-form">
                @csrf
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

                <span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>

                <div class="wrap-input100 validate-input" data-validate = "Enter username">
                    <input class="input100" type="text" name="email" placeholder="Username">
                    <span class="focus-input100" data-placeholder="&#xf207;"></span>
                    @if ($errors->has('email'))
                        <span class="invalid-feedback" role="alert" style="color:#ff0000;">{{ $errors->first('email') }}</span>
                    @endif
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
                    <input class="input100" type="password" name="password" placeholder="Password">
                    <span class="focus-input100" data-placeholder="&#xf191;"></span>
                    @if ($errors->has('password'))
                        <span class="invalid-feedback" role="alert" style="color:#ff0000;">{{ $errors->first('password') }}</span>
                    @endif
                </div>
                @if (session('msg'))
                    <div class="form-group has-feedback"><a href="#" style="color: red">{{ session('msg') }}</a></div>
                @endif

                <div class="contact100-form-checkbox">
                    <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                    <label class="label-checkbox100" for="ckb1">
                        Remember me
                    </label>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Login
                    </button>
                </div>

                <div class="text-center p-t-90">
                    <a class="txt1" href="#">
                        Forgot Password?
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>

<!-- jQuery 3 -->
{{--<script src="/backend/bower_components/jquery/dist/jquery.min.js"></script>--}}
{{--<!-- Bootstrap 3.3.7 -->--}}
{{--<script src="/backend/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>--}}
{{--<!-- iCheck -->--}}
<script src="/backend/plugins/iCheck/icheck.min.js"></script>

<!--===============================================================================================-->
<script src="/backend/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="/backend/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="/backend/login/vendor/bootstrap/js/popper.js"></script>
<script src="/backend/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="/backend/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="/backend/login/vendor/daterangepicker/moment.min.js"></script>
<script src="/backend/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="/backend/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="/backend/login/js/main.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });
</script>

</body>
</html>
