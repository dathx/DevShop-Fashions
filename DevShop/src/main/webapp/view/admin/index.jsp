<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
    <meta name="author" content="Coderthemes">

    <link rel="shortcut icon" href="admin/images/favicon.ico">

    <title>Dev Shop - Admin Dashboard</title>

    <!--Morris Chart CSS -->
    <link rel="stylesheet" href="admin/plugins/morris/morris.css">

    <!-- App css -->
    <link href="admin/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="admin/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="admin/css/style.css" rel="stylesheet" type="text/css" />

    <script src="admin/js/modernizr.min.js"></script>

</head>


<body class="fixed-left">

    <!-- Begin page -->
    <div id="wrapper">

        <%@include file="function/aside.jsp"%>
     


        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="content-page">
            <!-- Start content -->
            <div class="content">
                <div class="container-fluid">


                    <div class="row">

                        <div class="col-xl-3 col-md-6">
                            <div class="card-box">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                    </div>
                                </div>

                                <h4 class="header-title mt-0 m-b-30">Total Revenue</h4>

                                <div class="widget-chart-1">
                                    <div class="widget-chart-box-1">
                                        <input data-plugin="knob" data-width="80" data-height="80" data-fgColor="#f05050 " data-bgColor="#F9B9B9" value="58" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".15" />
                                    </div>

                                    <div class="widget-detail-1">
                                        <h2 class="p-t-10 mb-0"> 256 </h2>
                                        <p class="text-muted m-b-10">Revenue today</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-xl-3 col-md-6">
                            <div class="card-box">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                    </div>
                                </div>

                                <h4 class="header-title mt-0 m-b-30">Sales Analytics</h4>

                                <div class="widget-box-2">
                                    <div class="widget-detail-2">
                                        <span class="badge badge-success badge-pill pull-left m-t-20">32% <i class="mdi mdi-trending-up"></i> </span>
                                        <h2 class="mb-0"> 8451 </h2>
                                        <p class="text-muted m-b-25">Revenue today</p>
                                    </div>
                                    <div class="progress progress-bar-success-alt progress-sm mb-0">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="width: 77%;">
                                            <span class="sr-only">77% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-xl-3 col-md-6">
                            <div class="card-box">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                    </div>
                                </div>

                                <h4 class="header-title mt-0 m-b-30">Statistics</h4>

                                <div class="widget-chart-1">
                                    <div class="widget-chart-box-1">
                                        <input data-plugin="knob" data-width="80" data-height="80" data-fgColor="#ffbd4a" data-bgColor="#FFE6BA" value="80" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".15" />
                                    </div>
                                    <div class="widget-detail-1">
                                        <h2 class="p-t-10 mb-0"> 4569 </h2>
                                        <p class="text-muted m-b-10">Revenue today</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-xl-3 col-md-6">
                            <div class="card-box">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                    </div>
                                </div>

                                <h4 class="header-title mt-0 m-b-30">Daily Sales</h4>

                                <div class="widget-box-2">
                                    <div class="widget-detail-2">
                                        <span class="badge badge-pink badge-pill pull-left m-t-20">32% <i class="mdi mdi-trending-up"></i> </span>
                                        <h2 class="mb-0"> 158 </h2>
                                        <p class="text-muted m-b-25">Revenue today</p>
                                    </div>
                                    <div class="progress progress-bar-pink-alt progress-sm mb-0">
                                        <div class="progress-bar progress-bar-pink" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="width: 77%;">
                                            <span class="sr-only">77% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->

                    </div>
                    <!-- end row -->

                    <div class="row">
                        <div class="col-xl-4">
                            <div class="card-box">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                    </div>
                                </div>

                                <h4 class="header-title mt-0">Daily Sales</h4>

                                <div class="widget-chart text-center">
                                    <div id="morris-donut-example" style="height: 245px;"></div>
                                    <ul class="list-inline chart-detail-list mb-0">
                                        <li class="list-inline-item">
                                            <h5 style="color: #ff8acc;"><i class="fa fa-circle m-r-5"></i>Series A</h5>
                                        </li>
                                        <li class="list-inline-item">
                                            <h5 style="color: #5b69bc;"><i class="fa fa-circle m-r-5"></i>Series B</h5>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-xl-4">
                            <div class="card-box">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                    </div>
                                </div>
                                <h4 class="header-title mt-0">Statistics</h4>
                                <div id="morris-bar-example" style="height: 280px;"></div>
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-xl-4">
                            <div class="card-box">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                    </div>
                                </div>
                                <h4 class="header-title mt-0">Total Revenue</h4>
                                <div id="morris-line-example" style="height: 280px;"></div>
                            </div>
                        </div>
                        <!-- end col -->

                    </div>
                    <!-- end row -->


                    <div class="row">
                        <div class="col-xl-3 col-md-6">
                            <div class="card-box widget-user">
                                <div>
                                    <img src="admin/images/users/avatar-3.jpg" class="img-responsive rounded-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h5 class="mt-0 m-b-5 font-600">Chadengle</h5>
                                        <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                        <small class="text-warning"><b>Admin</b></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-xl-3 col-md-6">
                            <div class="card-box widget-user">
                                <div>
                                    <img src="admin/images/users/avatar-2.jpg" class="img-responsive rounded-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h5 class="mt-0 m-b-5 font-600"> Michael Zenaty</h5>
                                        <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                        <small class="text-custom"><b>Support Lead</b></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-xl-3 col-md-6">
                            <div class="card-box widget-user">
                                <div>
                                    <img src="admin/images/users/avatar-1.jpg" class="img-responsive rounded-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h5 class="mt-0 m-b-5 font-600">Stillnotdavid</h5>
                                        <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                        <small class="text-success"><b>Designer</b></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-xl-3 col-md-6">
                            <div class="card-box widget-user">
                                <div>
                                    <img src="admin/images/users/avatar-10.jpg" class="img-responsive rounded-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h5 class="mt-0 m-b-5 font-600">Tomaslau</h5>
                                        <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                        <small class="text-info"><b>Developer</b></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end row -->


                    <div class="row">
                        <div class="col-xl-4">
                            <div class="card-box">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                    </div>
                                </div>

                                <h4 class="header-title mt-0 m-b-30">Inbox</h4>

                                <div class="inbox-widget nicescroll" style="height: 315px;">
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="admin/images/users/avatar-1.jpg" class="rounded-circle" alt=""></div>
                                            <p class="inbox-item-author">Chadengle</p>
                                            <p class="inbox-item-text">Hey! there I'm available...</p>
                                            <p class="inbox-item-date">13:40 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="admin/images/users/avatar-2.jpg" class="rounded-circle" alt=""></div>
                                            <p class="inbox-item-author">Tomaslau</p>
                                            <p class="inbox-item-text">I've finished it! See you so...</p>
                                            <p class="inbox-item-date">13:34 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="admin/images/users/avatar-3.jpg" class="rounded-circle" alt=""></div>
                                            <p class="inbox-item-author">Stillnotdavid</p>
                                            <p class="inbox-item-text">This theme is awesome!</p>
                                            <p class="inbox-item-date">13:17 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="admin/images/users/avatar-4.jpg" class="rounded-circle" alt=""></div>
                                            <p class="inbox-item-author">Kurafire</p>
                                            <p class="inbox-item-text">Nice to meet you</p>
                                            <p class="inbox-item-date">12:20 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="admin/images/users/avatar-5.jpg" class="rounded-circle" alt=""></div>
                                            <p class="inbox-item-author">Shahedk</p>
                                            <p class="inbox-item-text">Hey! there I'm available...</p>
                                            <p class="inbox-item-date">10:15 AM</p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-xl-8">
                            <div class="card-box">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                    </div>
                                </div>

                                <h4 class="header-title mt-0 m-b-30">Latest Projects</h4>

                                <div class="table-responsive">
                                    <table class="table mb-0">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Project Name</th>
                                                <th>Start Date</th>
                                                <th>Due Date</th>
                                                <th>Status</th>
                                                <th>Assign</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Adminto Admin v1</td>
                                                <td>01/01/2017</td>
                                                <td>26/04/2017</td>
                                                <td><span class="badge badge-danger">Released</span></td>
                                                <td>Coderthemes</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Adminto Frontend v1</td>
                                                <td>01/01/2017</td>
                                                <td>26/04/2017</td>
                                                <td><span class="badge badge-success">Released</span></td>
                                                <td>Adminto admin</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Adminto Admin v1.1</td>
                                                <td>01/05/2017</td>
                                                <td>10/05/2017</td>
                                                <td><span class="badge badge-pink">Pending</span></td>
                                                <td>Coderthemes</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Adminto Frontend v1.1</td>
                                                <td>01/01/2017</td>
                                                <td>31/05/2017</td>
                                                <td><span class="badge badge-purple">Work in Progress</span>
                                                </td>
                                                <td>Adminto admin</td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Adminto Admin v1.3</td>
                                                <td>01/01/2017</td>
                                                <td>31/05/2017</td>
                                                <td><span class="badge badge-warning">Coming soon</span></td>
                                                <td>Coderthemes</td>
                                            </tr>

                                            <tr>
                                                <td>6</td>
                                                <td>Adminto Admin v1.3</td>
                                                <td>01/01/2017</td>
                                                <td>31/05/2017</td>
                                                <td><span class="badge badge-primary">Coming soon</span></td>
                                                <td>Adminto admin</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->

                    </div>
                    <!-- end row -->

                </div>
                <!-- container -->

            </div>
            <!-- content -->

            <footer class="footer text-right">
                2016 - 2018 Â© Adminto. Coderthemes.com
            </footer>

        </div>


        <!-- ============================================================== -->
        <!-- End Right content here -->
        <!-- ============================================================== -->


        <!-- Right Sidebar -->
        <div class="side-bar right-bar">
            <a href="javascript:void(0);" class="right-bar-toggle">
                <i class="mdi mdi-close-circle-outline"></i>
            </a>
            <h4 class="">Notifications</h4>
            <div class="notification-list nicescroll">
                <ul class="list-group list-no-border user-list">
                    <li class="list-group-item">
                        <a href="#" class="user-list-item">
                            <div class="avatar">
                                <img src="admin/images/users/avatar-2.jpg" alt="">
                            </div>
                            <div class="user-desc">
                                <span class="name">Michael Zenaty</span>
                                <span class="desc">There are new settings available</span>
                                <span class="time">2 hours ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="#" class="user-list-item">
                            <div class="icon bg-info">
                                <i class="mdi mdi-account"></i>
                            </div>
                            <div class="user-desc">
                                <span class="name">New Signup</span>
                                <span class="desc">There are new settings available</span>
                                <span class="time">5 hours ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="#" class="user-list-item">
                            <div class="icon bg-pink">
                                <i class="mdi mdi-comment"></i>
                            </div>
                            <div class="user-desc">
                                <span class="name">New Message received</span>
                                <span class="desc">There are new settings available</span>
                                <span class="time">1 day ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item active">
                        <a href="#" class="user-list-item">
                            <div class="avatar">
                                <img src="admin/images/users/avatar-3.jpg" alt="">
                            </div>
                            <div class="user-desc">
                                <span class="name">James Anderson</span>
                                <span class="desc">There are new settings available</span>
                                <span class="time">2 days ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item active">
                        <a href="#" class="user-list-item">
                            <div class="icon bg-warning">
                                <i class="mdi mdi-settings"></i>
                            </div>
                            <div class="user-desc">
                                <span class="name">Settings</span>
                                <span class="desc">There are new settings available</span>
                                <span class="time">1 day ago</span>
                            </div>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
        <!-- /Right-bar -->

    </div>
    <!-- END wrapper -->


    <!-- jQuery  -->
    <script src="admin/js/jquery.min.js"></script>
    <script src="admin/js/popper.min.js"></script>
    <script src="admin/js/bootstrap.min.js"></script>
    <script src="admin/js/detect.js"></script>
    <script src="admin/js/fastclick.js"></script>
    <script src="admin/js/jquery.blockUI.js"></script>
    <script src="admin/js/waves.js"></script>
    <script src="admin/js/jquery.nicescroll.js"></script>
    <script src="admin/js/jquery.slimscroll.js"></script>
    <script src="admin/js/jquery.scrollTo.min.js"></script>

    <!-- KNOB JS -->
    <!--[if IE]>
        <script type="text/javascript" src="admin/plugins/jquery-knob/excanvas.js"></script>
        <![endif]-->
    <script src="admin/plugins/jquery-knob/jquery.knob.js"></script>

    <!--Morris Chart-->
    <script src="admin/plugins/morris/morris.min.js"></script>
    <script src="admin/plugins/raphael/raphael-min.js"></script>

    <!-- Dashboard init -->
    <script src="admin/pages/jquery.dashboard.js"></script>

    <!-- App js -->
    <script src="admin/js/jquery.core.js"></script>
    <script src="admin/js/jquery.app.js"></script>

</body>

</html>