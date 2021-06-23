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

  <title>Dev Shop - Login & Register</title>
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
        <h3 class="page-title">Register</h3><!-- /.page-title -->

        <div class="row">
          <div class="col-sm-7">
            <p class="description">
             Register if you want buy clothe!
            </p><!-- /.description -->
          </div>

          <div class="col-sm-5">
            <ol class="breadcrumb text-right">
              <li><a href="#">Home</a></li>
              <li><a href="#">Pages</a></li>
              <li class="active">Register</li>
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
          <div class="col-md-2">
           
          </div>

          <div class="col-md-8">
            <div class="sign-up">
              <h2 class="title">Get Registered <span></span></h2><!-- /.title -->

 				 <h2>${msg }</h2>
 				 <br>
              <form:form  class="signup-form" action="/register-create" modelAttribute="acc" method="POST" acceptCharset="UTF-8">
              
                <p class="form-input" >
                <form:input path="username" class="form-control" placeholder="Username" />
                <form:errors path="username"/> <br>
                </p>
                <p class="form-input">
                <form:input  path="fullname"  class="form-control" placeholder="Fullname"/>    
                <form:errors path="fullname"/> <br>
                </p>
                <p class="form-input" >  
                <form:input  path="email" class="form-control" placeholder="Email" />      
                <form:errors path="email"/> <br>                          
                </p>
              
                <p class="form-input" >
                <form:password path="password"  class="form-control" placeholder="Password" />
                <form:errors path="password"/> <br>
                </p>
                <p class="form-input" >
                  <input type="password" class="form-control" name= "cfpw" placeholder="Confirm Password" >
                </p>
                <form:hidden path="role" value="true"/>
                 <form:errors path="role"/> <br>
                 
				<form:hidden path="activated" value="true"/>
				 <form:errors path="activated"/> <br>
                <p class="checkbox pull-left">
                  <input name="rememberme" type="checkbox" class="rememberme" value="Remember Me"/> 
                  I agree the 
                  <a href="#"> terms and conditions</a>
                </p>
                <p class="submit-input pull-right">
                <form:button  class="btn" name="signup-form-submit">Sign up</form:button>
                </p>
            </form:form>
              <div class="login-social">
                <button class="btn facebook">Register With Facebook</button>
                <button class="btn twitter">Register With Twitter</button> 
              </div><!-- /.login-social -->
            </div><!-- /.sign-up -->
          </div>
          
          <div class="col-md-2">  </div>
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