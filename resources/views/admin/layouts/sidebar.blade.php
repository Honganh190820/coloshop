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
                <a href="/admin">{{Auth::user()->fullname}}</a>
                <br>
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
                    <i class="fa fa-shopping-bag"></i> <span>QL sản phẩm</span>
                </a>
            </li>

            <li>
                <a href="{{ route('admin.article.index') }}">
                    <i class="fa fa-edit"></i> <span>QL bài viết</span>
                </a>
            </li>


            <li>
                <a href="{{ route('admin.banner.index') }}">
                    <i class="fa fa-picture-o"></i><span>QL banner</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.contact.index') }}">
                    <i class="fa fa-volume-control-phone"></i> <span>QL liên hệ</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.order.index') }}">
                    <i class="fa fa-cart-plus"></i> <span>QL đơn hàng</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.user.index') }}">
                    <i class="fa fa-users"></i> <span>QL user</span>
                </a>
            </li>
            <li>
                <a href="{{route('admin.setting.index')}}">
                    <i class="fa fa-sticky-note-o"></i> <span>Setting</span>
                </a>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
