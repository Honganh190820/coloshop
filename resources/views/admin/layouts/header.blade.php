<header class="main-header">
    <!-- Logo -->
    <a style="background: #9152f8;
    background: -webkit-linear-gradient(top, #7579ff, #b224ef);
    background: -o-linear-gradient(top, #7579ff, #b224ef);
    background: -moz-linear-gradient(top, #7579ff, #b224ef);
    background: linear-gradient(top, #7579ff, #b224ef);" href="index2.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>Admin</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Quản Lý Website</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav style="background: #9152f8;
    background: -webkit-linear-gradient(top, #7579ff, #b224ef);
    background: -o-linear-gradient(top, #7579ff, #b224ef);
    background: -moz-linear-gradient(top, #7579ff, #b224ef);
    background: linear-gradient(top, #7579ff, #b224ef);" class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button"></a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- Messages: style can be found in dropdown.less-->
                <li class="dropdown messages-menu">
                    <a href="#" class="dropdown-toggle">
                        <i class="fa fa-home"></i>
                        Website
                    </a>
                </li>
                <!-- Notifications: style can be found in dropdown.less -->
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="{{ Auth::user()->image }}" class="user-image" alt="User Image">
                        <span class="hidden-xs">
                            {{ Auth::user()->fullname }}
                        </span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li style="background: #9152f8;
    background: -webkit-linear-gradient(top, #7579ff, #b224ef);
    background: -o-linear-gradient(top, #7579ff, #b224ef);
    background: -moz-linear-gradient(top, #7579ff, #b224ef);
    background: linear-gradient(top, #7579ff, #b224ef);" class="user-header">
                            <img src="{{ Auth::user()->image }}" class="img-circle" alt="User Image">
                            <p>

                            </p>
                        </li>
                        <!-- Menu Body -->
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="admin/user_page" class="btn btn-default btn-flat">Thông tin</a>
                            </div>
                            <div class="pull-right">
                                <a href="{{route('dang_xuat')}}" class="btn btn-default btn-flat">Đăng xuất</a>
                            </div>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </nav>
</header>

