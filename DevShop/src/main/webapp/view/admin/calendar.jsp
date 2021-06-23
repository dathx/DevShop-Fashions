<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="admin/images/favicon.ico">

          <title>Dev Shop - Admin Calendar</title>

        <!--calendar css-->
        <link href="admin/plugins/fullcalendar/css/fullcalendar.min.css" rel="stylesheet" />

        <!-- App css -->
        <link href="admin/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="admin/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="admin/css/style.css" rel="stylesheet" type="text/css" />

        <script src="admin/js/modernizr.min.js"></script>

    </head>


    <body class="fixed-left">

            
        <%@include file="function/aside.jsp"%>



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">

                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="widget">
                                            <div class="widget-body">
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <a href="#" data-toggle="modal" data-target="#add-category" class="btn btn-lg btn-success btn-block waves-effect waves-light">
                                                            <i class="fa fa-plus"></i> Create New
                                                        </a>
                                                        <div id="external-events" class="m-t-20">
                                                            <br>
                                                            <p>Drag and drop your event or click in the calendar</p>
                                                            <div class="external-event bg-primary" data-class="bg-primary">
                                                                <i class="mdi mdi-checkbox-blank-circle mr-2 vertical-middle"></i>New Theme Release
                                                            </div>
                                                            <div class="external-event bg-pink" data-class="bg-pink">
                                                                <i class="mdi mdi-checkbox-blank-circle mr-2 vertical-middle"></i>My Event
                                                            </div>
                                                            <div class="external-event bg-warning" data-class="bg-warning">
                                                                <i class="mdi mdi-checkbox-blank-circle mr-2 vertical-middle"></i>Meet manager
                                                            </div>
                                                            <div class="external-event bg-purple" data-class="bg-purple">
                                                                <i class="mdi mdi-checkbox-blank-circle mr-2 vertical-middle"></i>Create New theme
                                                            </div>
                                                        </div>

                                                        <!-- checkbox -->
                                                        <div class="checkbox m-t-40">
                                                            <input id="drop-remove" type="checkbox">
                                                            <label for="drop-remove">
                                                                Remove after drop
                                                            </label>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> <!-- end col-->
                                    <div class="col-lg-9">
                                        <div class="card-box">
                                            <div id="calendar"></div>
                                        </div>
                                    </div> <!-- end col -->
                                </div>  <!-- end row -->

                                <!-- BEGIN MODAL -->
                                <div class="modal fade none-border" id="event-modal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mt-0"><strong>Add New Event</strong></h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body"></div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-success save-event waves-effect waves-light">Create event</button>
                                                <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal Add Category -->
                                <div class="modal fade none-border" id="add-category">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mt-0"><strong>Add a category </strong></h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <form role="form">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label class="control-label">Category Name</label>
                                                            <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name"/>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="control-label">Choose Category Color</label>
                                                            <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                                                <option value="success">Success</option>
                                                                <option value="danger">Danger</option>
                                                                <option value="info">Info</option>
                                                                <option value="pink">Pink</option>
                                                                <option value="primary">Primary</option>
                                                                <option value="warning">Warning</option>
                                                                <option value="inverse">Inverse</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END MODAL -->
                            </div>
                            <!-- end col-12 -->
                        </div> <!-- end row -->

                    </div> <!-- container -->

                </div> <!-- content -->

                <footer class="footer text-right">
                    2016 - 2018 © Adminto. Coderthemes.com
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

        <!-- App js -->
        <script src="admin/js/jquery.core.js"></script>
        <script src="admin/js/jquery.app.js"></script>

        <!-- Jquery-Ui -->
        <script src="admin/plugins/jquery-ui/jquery-ui.min.js"></script>

        <!-- SCRIPTS -->
        <script src="admin/plugins/moment/moment.js"></script>
        <script src='admin/plugins/fullcalendar/js/fullcalendar.min.js'></script>
        <script src="admin/pages/jquery.fullcalendar.js"></script>

    </body>
</html>