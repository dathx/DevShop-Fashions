<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="admin/images/favicon.ico">

          <title>Dev Shop - Admin Category</title>
        <!-- DataTables -->
        <link href="admin/plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="admin/plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <!-- Responsive datatable examples -->
        <link href="admin/plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <!-- Multi Item Selection examples -->
        <link href="admin/plugins/datatables/select.bootstrap4.min.css" rel="stylesheet" type="text/css" />

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
                            <div class="col-12">
                                <div class="card-box table-responsive">
                                    <h2 class="m-t-0 header-title">Manager Category</h2>
                                                                
                                   <br> 
 										
 										   <form:form action="/admin-category" modelAttribute="item" class="form-horizontal" role="form">
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">ID</label>
                                                <div class="col-10">
                                                    <form:input class="form-control"  path="id" placeholder="Category Id?" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">NAME</label>
                                                <div class="col-10">
                                                    <form:input class="form-control" path="name" placeholder="Category Name?"/>
                                                </div>
                                            </div>
                                            <button class="btn btn-success" formaction="/category-create">Create</button>
											<button  class="btn btn-primary" formaction="/category-update">Update</button>
											<a class="btn btn-danger" href="/category-delete-${item.id}">Delete</a>
											<a class="btn btn-light" href="/admin-category">Reset</a>
                                            </form:form>
                                            <br>
                                            <hr>
                                            <br>
                                    <table id="datatable-buttons" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th></th>
                                            
                                        </tr>
                                        </thead>


                                        <tbody>
                                          <c:forEach var="item" items="${items}">
                                        <tr>
                                            <td>${item.id}</td>
                                            <td>${item.name}</td>
                                            <td><a   href="/category-edit-${item.id}"> Edit</a></td>
                                        </tr>
                                       </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> <!-- end row -->

                    </div> <!-- container -->

                </div> <!-- content -->

         
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

        <!-- Required datatable js -->
        <script src="admin/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="admin/plugins/datatables/dataTables.bootstrap4.min.js"></script>
        <!-- Buttons examples -->
        <script src="admin/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="admin/plugins/datatables/buttons.bootstrap4.min.js"></script>
        <script src="admin/plugins/datatables/jszip.min.js"></script>
        <script src="admin/plugins/datatables/pdfmake.min.js"></script>
        <script src="admin/plugins/datatables/vfs_fonts.js"></script>
        <script src="admin/plugins/datatables/buttons.html5.min.js"></script>
        <script src="admin/plugins/datatables/buttons.print.min.js"></script>

        <!-- Key Tables -->
        <script src="admin/plugins/datatables/dataTables.keyTable.min.js"></script>

        <!-- Responsive examples -->
        <script src="admin/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="admin/plugins/datatables/responsive.bootstrap4.min.js"></script>

        <!-- Selection table -->
        <script src="admin/plugins/datatables/dataTables.select.min.js"></script>

        <!-- App js -->
        <script src="admin/js/jquery.core.js"></script>
        <script src="admin/js/jquery.app.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {

                // Default Datatable
                $('#datatable').DataTable();

                //Buttons examples
                var table = $('#datatable-buttons').DataTable({
                    lengthChange: false,
                    buttons: ['copy', 'excel', 'pdf']
                });

                // Key Tables

                $('#key-table').DataTable({
                    keys: true
                });

                // Responsive Datatable
                $('#responsive-datatable').DataTable();

                // Multi Selection Datatable
                $('#selection-datatable').DataTable({
                    select: {
                        style: 'multi'
                    }
                });

                table.buttons().container()
                    .appendTo('#datatable-buttons_wrapper .col-md-6:eq(0)');
            });

        </script>


    </body>
</html>