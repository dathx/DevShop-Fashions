<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]>      <html class="no-js" lang=""> <!<![endif]-->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
 <title>Dev Shop - Login</title>
  <meta name="description" content="Shopaholic - e-Commerce HTML5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="shortcut icon" href="images/favicon.ico">

  <link rel="stylesheet" type="text/css" href="<x:url value='css/font-awesome.min.css'/>"/>
  <link rel="stylesheet" type="text/css" href="<x:url value='assets/css/themify-icons.css'/>"/>
  <link rel="stylesheet" type="text/css" href="<x:url value='href="assets/css/et-line-icons.css'/>"/>

  <link rel="stylesheet"  href="<x:url value='assets/css/bootstrap.min.css'/>"/>
  <link rel="stylesheet"  href="<x:url value='assets/css/slick.css'/>"/>
  <link rel="stylesheet"  href="<x:url value='assets/css/magnific-popup.css'/>"/>
  <link rel="stylesheet"  href="<x:url value='assets/css/style.css'/>"/>
  <link rel="stylesheet"  href="<x:url value='assets/css/themes.css'/>"/>
  <link rel="stylesheet"  href="<x:url value='assets/css/pages/register.css'/>"/>
  <!--[if lte IE 7]><script src="lte-ie7.js"></script><![endif]-->
  <!--[if lt IE 9]><script src="assets/js/vendor/html5-3.6-respond-1.4.2.min.js"></script><![endif]-->


</head>


<body>


 <%@include file="function/header.jsp"%>



  <section class="page-name-sec page-name-sec-01">
    <div class="section-padding">
      <div class="container">
        <h3 class="page-title">Change Password</h3><!-- /.page-title -->

        <div class="row">
          <div class="col-sm-7">
            <p class="description">
              Do you want change password?
            </p><!-- /.description -->
          </div>

          <div class="col-sm-5">
            <ol class="breadcrumb text-right">
              <li><a href="#">Home</a></li>
              <li><a href="#">Pages</a></li>
              <li class="active">Change Password</li>
            </ol><!-- /.breadcrumb -->
          </div>

        </div><!-- /.row -->
      </div><!-- /.container -->
    </div><!-- /.section-padding -->
  </section><!-- /.page-name-sec -->



  <section class="login-section">
    <div class="section-padding">
      <div class="container">
        <div class="row">
        <div class="col-md-3 "></div>
          <div class="col-md-6 ">
            <div class="sign-in bg-gray">
              <h2 class="title">You can change your password here.</h2>
              <form class="sign-in-form" id="sign-in-form" action="/changepassword" method="post">
               <h3>${tb }</h3>
               <br>
                <p class="form-input">
                  <input type="hidden"  name="username" id="user_login" class="input" value="${user.username}" placeholder="Username" required/>
                </p>
                <p class="form-input">
                  <input type="password"  name="password" id="user_email" class="input"  placeholder="Password" required/>
                </p>
                <p class="form-input">
                  <input type="password"  name="newpw" id="user_login" class="input" value="" placeholder="New Password" required/>
                </p>
                <p class="form-input">
                  <input type="password"  name="cfpw" id="user_email" class="input" value="" placeholder="Confirm Password" required/>
                </p>
                <p class="form-input">
                  <input type="submit" name="wp-submit" id="wp-submit" class="btn" value="Change password" />
                </p>
                
              </form>

            
            </div><!-- /.sign-in -->
          </div>
		<div class="col-md-3 "></div>
         
        </div><!-- /.row -->
      </div><!--/.container-->
    </div><!-- /.section-padding -->
  </section><!--/.login-section-->




   <%@include file="function/footer.jsp"%>


  <div id="scroll-to-top" class="scroll-to-top">
    <i class="fa fa-angle-double-up"></i>    
  </div>



  <script src="assets/js/plugins.js"></script>
  <script src="assets/js/main.js"></script>


</body>
</html>