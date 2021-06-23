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

      <title>Dev Shop - Admin Edit Account</title>
    
 <!-- form Uploads -->
        <link href="admin/plugins/fileuploads/css/dropify.min.css" rel="stylesheet" type="text/css" />

    <!-- App css -->
    <link href="admin/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="admin/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="admin/css/style.css" rel="stylesheet" type="text/css" />
    
    <script src="admin/js/modernizr.min.js"></script>

</head>


<body class="fixed-left">


 <!-- Begin page -->


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
                        <div class="card-box">
                            <h4 class="m-t-0 header-title">EDIT ACCOUNT</h4>

                            <div class="row">
                                <div class="col-12">
                                    <div class="p-20">
                                     <form:form  class="form-horizontal" role="form" method="POST" modelAttribute="item" enctype="multipart/form-data">                                  
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">USERNAME</label>
                                                <div class="col-10">
                                                   <form:input class="form-control" path="username"/>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">PASSWORD</label>
                                                <div class="col-10">
                                                     <form:input class="form-control" path="password"/>
                                                </div>

                                            </div>
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">FULLNAME</label>
                                                <div class="col-10">
                                                     <form:input class="form-control" path="fullname"/>
                                                </div>

                                            </div>
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">EMAIL</label>
                                                <div class="col-md-10">                                                
                                                     <form:input class="form-control" path="email"/>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">ROLE</label>
                                               <div class="radio radio-info form-check-inline">
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      &nbsp;&nbsp;&nbsp;                           
		                                        <form:radiobutton class="custom-control-input" id="inlineRadio1" value="true" checked="true" path="role"/>
		                                        <label for="inlineRadio1"> USER </label>
			                                    </div>
			                                    <div class="radio radio-warning form-check-inline">
			                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                                    <form:radiobutton class="custom-control-input" id="inlineRadio2" value="false"  path="role"/>                     
			                                        <label for="inlineRadio2"> ADMIN </label>
			                                    </div>
                                            </div>
                                            

                                            
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">ACTIVATED</label>
                                                <div class="radio radio-info form-check-inline">
                                               &nbsp;&nbsp;      &nbsp;&nbsp;&nbsp;                           
		                                        <form:radiobutton name="radio" id="radio3"  value="true" checked="true" path="activated"/>
		                                        <label for="radio3"> ON </label>
		                                       
			                                    </div>
			                                    <div class="radio  form-check-inline">
			                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                                    <form:radiobutton name="radio" id="radio1" value="false"  path="activated"/>                     
			                                        <label for="radio1"> OFF </label>
			                                    </div>
                                            </div>
                                          
                                           
                                            
				                                <div class="card-box">
				                                    <div class="dropdown pull-right">
				                                        <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
				                                            <i class="mdi mdi-dots-vertical"></i>
				                                        </a>
				               
				                                    </div>
				
				                                    <h4 class="header-title m-t-0 m-b-30">IMAGE</h4>
				
													<form:input  type="file" data-default-file="avatar/${item.image}" value="${item.image}" class="dropify" data-max-file-size="1M" path="image"/>
				                                </div>
				                              
				                               

                                            <button class="btn btn-success" formaction="/account-create">Create</button>
											<button  class="btn btn-primary" formaction="/account-update">Update</button>
											<a class="btn btn-danger" href="/account-delete-${item.username}">Delete</a>
											<a class="btn btn-light" href="/admin-list-account">Reset</a>
											<a class="btn btn-light" href="/admin-list-account">List Account</a>
                                        
                                        </form:form>



                                    </div>
                                    <!-- content -->


                                </div>



                            </div>
                            <!-- END wrapper -->


                            <!-- jQuery  -->
                            <script src="admin/js/jquery.min.js "></script>
                            <script src="admin/js/popper.min.js "></script>
                            <script src="admin/js/bootstrap.min.js "></script>
                            <script src="admin/js/detect.js "></script>
                            <script src="admin/js/fastclick.js "></script>
                            <script src="admin/js/jquery.blockUI.js "></script>
                            <script src="admin/js/waves.js "></script>
                            <script src="admin/js/jquery.nicescroll.js "></script>
                            <script src="admin/js/jquery.slimscroll.js "></script>
                            <script src="admin/js/jquery.scrollTo.min.js "></script>

                            <!-- App js -->
                            <script src="admin/js/jquery.core.js "></script>
                            <script src="admin/js/jquery.app.js "></script>
                            
	                              <!-- file uploads js -->
					        <script src="admin/plugins/fileuploads/js/dropify.min.js"></script>
					
					
					        <script type="text/javascript">
					            $('.dropify').dropify({
					                messages: {
					                    'default': 'Drag and drop a file here or click',
					                    'replace': 'Drag and drop or click to replace',
					                    'remove': 'Remove',
					                    'error': 'Ooops, something wrong appended.'
					                },
					                error: {
					                    'fileSize': 'The file size is too big (1M max).'
					                }
					            });
					        </script>

</body>

</html>