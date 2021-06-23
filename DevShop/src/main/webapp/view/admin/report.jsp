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

      <title>Dev Shop - Admin Report</title>

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
                            <h4 class="m-t-0 header-title">REPORT</h4>

							
                            <table id="datatable" class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>LOẠI</th>
                                        <th>TỔNG GIÁ</th>
                                        <th>SỐ SẢN PHẨM</th>
                                    </tr>
                                </thead>


                                <tbody>
                                  <c:forEach var="item" items="${items}">
                                    <tr>
                                        <td>${item.group.name}</td>
                                        <td>${item.sum}</td>
                                        <td>${item.count}</td>
                            
                                    </tr>
                                    </c:forEach>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- end row -->


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
        $(document).ready(function() {

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