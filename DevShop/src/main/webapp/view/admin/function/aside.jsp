   <!-- Top Bar Start -->
        <div class="topbar">

            <!-- LOGO -->
            <div class="topbar-left">
                <a href="/admin" class="logo"><span>DevShop<span>Admin</span></span><i class="mdi mdi-layers"></i></a>
            </div>

            <!-- Button mobile view to collapse sidebar menu -->
            <div class="navbar navbar-default" role="navigation">
                <div class="container-fluid">

                    <!-- Page title -->
                    <ul class="nav navbar-nav list-inline navbar-left">
                        <li class="list-inline-item">
                            <button class="button-menu-mobile open-left">
                                    <i class="mdi mdi-menu"></i>
                                </button>
                        </li>
                        <li class="list-inline-item">
                            <h4 class="page-title">Dashboard</h4>
                        </li>
                    </ul>

                    <nav class="navbar-custom">

                        <ul class="list-unstyled topbar-right-menu float-right mb-0">

                            <li>
                                <!-- Notification -->
                                <div class="notification-box">
                                    <ul class="list-inline mb-0">
                                        <li>
                                            <a href="javascript:void(0);" class="right-bar-toggle">
                                                <i class="mdi mdi-bell-outline noti-icon"></i>
                                            </a>
                                            <div class="noti-dot">
                                                <span class="dot"></span>
                                                <span class="pulse"></span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!-- End Notification bar -->
                            </li>

                            <li class="hide-phone">
                                <form class="app-search">
                                    <input type="text" placeholder="Search..." class="form-control">
                                    <button type="submit"><i class="fa fa-search"></i></button>
                                </form>
                            </li>

                        </ul>
                    </nav>
                </div>
                <!-- end container -->
            </div>
            <!-- end navbar -->
        </div>
        <!-- Top Bar End -->
           <!-- ========== Left Sidebar Start ========== -->
        <div class="left side-menu">
            <div class="sidebar-inner slimscrollleft">

                <!-- User -->
                <div class="user-box">
                    <div class="user-img">
                        <img src="avatar/${sessionScope.user.image}" alt="user-img" title="Mat Helme" class="rounded-circle img-thumbnail img-responsive">
                        <div class="user-status offline"><i class="mdi mdi-adjust"></i></div>
                    </div>
                    <h5><a href="#">${sessionScope.user.fullname}</a> </h5>
                    <ul class="list-inline">
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="mdi mdi-settings"></i>
                            </a>
                        </li>

                        <li class="list-inline-item">
                            <a href="/home" class="text-custom">
                                <i class="mdi mdi-power"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- End User -->

                <!--- Sidemenu -->
                <div id="sidebar-menu">
                    <ul>
                        <li class="text-muted menu-title">Navigation</li>

                        <li>
                            <a href="/admin" class="waves-effect"><i class="mdi mdi-view-dashboard"></i> <span> Dashboard </span> </a>
                        </li>

                        <li>
                            <a href="/admin-category" class="waves-effect"><i class="mdi mdi-view-dashboard"></i> <span> Category </span> </a>
                        </li>


                        <li class="has_sub">
                            <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-texture"></i><span class="badge badge-warning pull-right">7</span><span> Products </span> </a>
                            <ul class="list-unstyled">
                                <li><a href="/admin-edit-product">Edit Product</a></li>
                                <li><a href="/admin-list-product">List Product</a></li>
                            </ul>
                        </li>
                        <li class="has_sub">
                            <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-texture"></i><span class="badge badge-warning pull-right"></span><span> Accounts </span> </a>
                            <ul class="list-unstyled">
                                <li><a href="/account-edit-dathx">Edit Account</a></li>
                                <li><a href="/admin-list-account">List Account</a></li>
                            </ul>
                        </li>

                        <li class="has_sub">
                            <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-view-list"></i> <span> Report </span> <span class="menu-arrow"></span></a>
                            <ul class="list-unstyled">
                                <li><a href="/admin-report">All</a></li>

                            </ul>
                        </li>
                        
                         

                            <li>
                                <a href="/mail" class="waves-effect"><i class="mdi mdi-email"></i><span class="badge badge-purple pull-right">New</span><span> Mail </span></a>
                            </li>
                            <li>
                                <a href="/calendar" class="waves-effect"><i class="mdi mdi-calendar"></i><span> Calendar </span></a>
                            </li>
                         
                   

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <!-- Sidebar -->
                <div class="clearfix"></div>

            </div>

        </div>
        <!-- Left Sidebar End -->
        