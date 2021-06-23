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

   <title>Dev Shop - Contact</title>
  <meta name="description" content="Shopaholic - e-Commerce HTML5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="shortcut icon" href="images/favicon.ico">

  <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="assets/css/themify-icons.css">
  <link rel="stylesheet" type="text/css" href="assets/css/et-line-icons.css">  

  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/slick.css">
  <link rel="stylesheet" href="assets/css/magnific-popup.css"> 
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/themes.css">
  <link rel="stylesheet" href="assets/css/pages/contact.css">

  <!--[if lte IE 7]><script src="lte-ie7.js"></script><![endif]-->
  <!--[if lt IE 9]><script src="assets/js/vendor/html5-3.6-respond-1.4.2.min.js"></script><![endif]-->


</head>
<body>


 <%@include file="function/header.jsp"%>



  <section class="page-name-sec page-name-sec-01">
    <div class="section-padding">
      <div class="container">
        <h3 class="page-title">Contact Us</h3><!-- /.page-title -->

        <div class="row">
          <div class="col-sm-7">
            <p class="description">
              Duis sed odio sit amet nibh vulputate cursus a sit amet. 
            </p><!-- /.description -->
          </div>

          <div class="col-sm-5">
            <ol class="breadcrumb text-right">
              <li><a href="#">Home</a></li>
              <li><a href="#">Pages</a></li>
              <li class="active">Contact</li>
            </ol><!-- /.breadcrumb -->
          </div>

        </div><!-- /.row -->
      </div><!-- /.container -->
    </div><!-- /.section-padding -->
  </section><!-- /.page-name-sec -->





  <section class="contact-section text-center">
    <div class="section-padding">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="item">
              <div class="item-icon"><span class="icon-phone"></span></div><!-- /.item-icon -->
              <div class="item-details">
                <h4 class="item-title">Phone</h4><!-- /.item-title -->
                <span class="details">
                  +61 3 8376 6284 (Office Time: 09:00 - 16:00)<br>
                  +61 3 8743 2309 (24 Hours)
                </span><!-- /.details -->
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="item">
              <div class="item-icon"><span class="icon-map-pin"></span></div><!-- /.item-icon -->
              <div class="item-details">
                <h4 class="item-title">Address</h4><!-- /.item-title -->
                <span class="details">
                  121 King Street, Melbourne VIC 3000<br>
                  Australia
                </span><!-- /.details -->
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="item">
              <div class="item-icon"><span class="icon-envelope"></span></div><!-- /.item-icon -->
              <div class="item-details">
                <h4 class="item-title">Email</h4><!-- /.item-title -->
                <span class="details">
                  <a href="#">support@shopaholic.com</a>
                  <a href="#">hello@shopaholic.com</a>
                </span><!-- /.details -->
              </div>
            </div>
          </div>
        </div><!-- /.row -->

        <div class="section-padding">
          <div class="section-top">
            <h2 class="section-title">Feel Free to say Hello<span></span></h2><!-- /.section-title -->
          </div><!-- /.section-top -->

          <p class="section-description">
            Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent 
          </p><!-- /.section-description -->

          <form action="#" method="post" class="wpcf7-form contact-form">
            <div class="contact-input-fields">
              <p>
                <span class="wpcf7-form-control-wrap">
                  <label for="name">Your Name*</label>
                  <input type="text" id="name" name="name" value="" class="wpcf7-form-control" required="">
                </span>
              </p>
              <p>
                <span class="wpcf7-form-control-wrap">
                  <label for="email">Your Email*</label>
                  <input type="email" id="email" name="email" value="" class="wpcf7-form-control" required="">
                </span>
              </p>
              <p>
                <span class="wpcf7-form-control-wrap">
                  <label for="url">Your URL</label>
                  <input type="url" id="url" name="url" value="" class="wpcf7-form-control">
                </span>
              </p>
            </div><!-- /.contact-input-fields -->

            <p>
              <span class="wpcf7-form-control-wrap">
                <label for="message">Your Message*</label>
                <textarea id="message" name="message" class="wpcf7-form-control" required=""></textarea>
              </span>
            </p>

            <p class="choose-table-form"> 
              <input type="submit" value="Submit Now" class="wpcf7-form-control wpcf7-submit"> 
            </p>
          </form><!-- /.contact-form -->
        </div><!-- /.section-padding -->

        <div id="google-map">
          <div class="map-container">
           <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1YThlyg-FcxG2juDLOgf9AKceP4tYa8fa"  width="100%" height="400px"></iframe>
          </div><!-- /.map-container -->
        </div><!-- /#google-map-->

      </div><!-- /.container -->
    </div><!-- /.section-padding -->
  </section><!-- /.contact-section -->







   <%@include file="function/footer.jsp"%>



  <div id="scroll-to-top" class="scroll-to-top">
    <i class="fa fa-angle-double-up"></i>    
  </div>



  <script src="assets/js/plugins.js"></script>
  <script src="assets/js/main.js"></script>
  <script src="assets/js/gmap3.min.js"></script>
  <script src="http://maps.google.com/maps/api/js?sensor=true"></script>

  <script type="text/javascript">

    jQuery(document).ready(function($) {
      "use strict";


      /*----------- Google Map - with support of gmaps.js ----------------*/
      function isMobile() {
        return ('ontouchstart' in document.documentElement);
      }

      function init_gmap() {
        if ( typeof google == 'undefined' ) return;
        var options = {
          center: {lat: -37.834812, lng: 144.963055},
          zoom: 15,
          mapTypeControl: true,
          mapTypeControlOptions: {
            style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
          },
          navigationControl: true,
          scrollwheel: false,
          streetViewControl: true,
          styles: [{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#cdcdcd"},{"visibility":"on"}]}]
        }

        if (isMobile()) {
          options.draggable = false;
        }

        $('#googleMaps').gmap3({
          map: {
            options: options
          },
          marker: {
            latLng: [-37.834812, 144.963055],
            options: { icon: 'images/map-icon.png' }
          }
        });
      }

      init_gmap();

    });
  </script>



</body>
</html>