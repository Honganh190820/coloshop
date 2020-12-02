<!-- Left side column. contains the logo and sidebar -->
<aside style="background: #4a4a4a" class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section  class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{Auth::user()->image}}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>{{Auth::user()->name}}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li>
                <a href="{{ route('admin.category.index') }}">
                    <i class="fa fa-th"></i> <span>QL danh mục</span>
                </a>
            </li>

            <li>
                <a href="{{ route('admin.product.index') }}">
                    <span class="glyphicon glyphicon-gift"></span> <span>QL sản phẩm</span>
                </a>
            </li>

            <li>
                <a href="{{ route('admin.article.index') }}">
                    <span class="glyphicon glyphicon-list-alt"></span> <span>QL bài viết</span>
                </a>
            </li>
            <li>
                <a href="{{route('admin.setting.index')}}">
                    <span class="glyphicon glyphicon-file"></span> <span>Setting</span>
                </a>
            </li>

            <li>
                <a href="{{ route('admin.banner.index') }}">
                    <span class="glyphicon glyphicon-book"></span></i> <span>QL banner</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.contact.index') }}">
                    <span class="glyphicon glyphicon-phone-alt"></span> <span>QL liên hệ</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.order.index') }}">
                    <span class="glyphicon glyphicon-shopping-cart"></span> <span>QL đơn hàng</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.user.index') }}">
                    <span class="glyphicon glyphicon-user"></span> <span>QL user</span>
                </a>
            </li>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
