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

   <title>Dev Shop - Blog</title>
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
  <link rel="stylesheet" href="assets/css/blog/classic-01.css">

  <!--[if lte IE 7]><script src="lte-ie7.js"></script><![endif]-->
  <!--[if lt IE 9]><script src="assets/js/vendor/html5-3.6-respond-1.4.2.min.js"></script><![endif]-->


</head>


<body class="blog page">


  <%@include file="function/header.jsp"%>




  <section class="page-name-sec page-name-sec-01">
    <div class="section-padding">
      <div class="container">
        <h3 class="page-title">Blog classic right sidebar</h3><!-- /.page-title -->

        <div class="row">
          <div class="col-sm-6">
            <p class="description">
              Duis sed odio sit amet nibh vulputate cursus a sit amet. 
            </p><!-- /.description -->
          </div>

          <div class="col-sm-6">
            <ol class="breadcrumb text-right">
              <li><a href="#">Home</a></li>
              <li class="active">Blog</li>
            </ol><!-- /.breadcrumb -->
          </div>

        </div><!-- /.row -->
      </div><!-- /.container -->
    </div><!-- /.section-padding -->
  </section><!-- /.page-name-sec -->



  <section class="blog-posts right-sidebar">
    <div class="section-padding">
      <div class="container">
        <div class="row">
          <div class="col-md-8">

            <article class="post type-post format-standard">
              <div class="entry-thumbnail">
                <img src="images/blog/01/4.jpg" alt="blog">
              </div>

              <div class="post-content media">
                <div class="entry-meta media-left">
                  <time datetime="2016-02-15"><span class="date">15</span> <span class="month">Feb</span></time>
                </div><!-- /.entry-meta -->

                <div class="entry-content media-body">
                  <h2 class="entry-title"><a href="#">Standard Blog Post</a></h2><!-- /.entry-title -->

                  <div class="meta-info">
                    <span class="author"><i class="ti-user"></i><a href="#">John Doe</a></span>
                    <span class="cat-links"><i class="ti-tag"></i><a href="#">WordPress</a>, <a href="#">Coding</a></span>
                    <span class="comments-link"><i class="ti-comment"></i><a href="#">25 Comments</a></span>
                  </div><!-- /.meta-info -->

                  <div class="description">
                    <p>What's the point at ordinary pleasures into specific pleasures derived from each one. Our judgment about the merits of any given work of art depends to a large extent upon our answer to this question. </p>
                  </div><!-- /.description -->

                  <a href="#" class="btn">More <i class="ti-arrow-right"></i></a>
                </div><!-- /.entry-content -->
              </div><!-- /.content -->
            </article><!--/.post-->

            <article class="post type-post format-gallery">
              <div class="entry-thumbnail">
                <div id="post_slide" class="carousel slide" data-ride="carousel">

                  <div class="carousel-inner" role="listbox">
                    <div class="item active">
                      <img src="images/blog/01/5.jpg" alt="blog">
                    </div><!-- /.item -->

                    <div class="item">
                      <img src="images/blog/01/6.jpg" alt="blog">
                    </div><!-- /.item -->

                    <div class="item">
                      <img src="images/blog/01/7.jpg" alt="blog">
                    </div><!-- /.item -->
                  </div><!-- /.carousel-inner -->

                  <!-- Controls -->
                  <a class="left carousel-control" href="#post_slide" role="button" data-slide="prev">
                    <i class="ti-angle-left" aria-hidden="true"></i>
                  </a>
                  <a class="right carousel-control" href="#post_slide" role="button" data-slide="next">
                    <i class="ti-angle-right" aria-hidden="true"></i>
                  </a>
                </div><!--/.carousel-->
              </div>

              <div class="post-content media">
                <div class="entry-meta media-left">
                  <time datetime="2016-02-15"><span class="date">15</span> <span class="month">Feb</span></time>
                </div><!-- /.entry-meta -->

                <div class="entry-content media-body">
                  <h2 class="entry-title"><a href="#">LATEST TRENDY DESIGNS</a></h2><!-- /.entry-title -->

                  <div class="meta-info">
                    <span class="author"><i class="ti-user"></i><a href="#">John Doe</a></span>
                    <span class="cat-links"><i class="ti-tag"></i><a href="#">WordPress</a>, <a href="#">Coding</a></span>
                    <span class="comments-link"><i class="ti-comment"></i><a href="#">25 Comments</a></span>
                  </div><!-- /.meta-info -->

                  <div class="description">
                    <p>Those who have not yet pleasures of the art of painting from the pleasures they derive from the art of literature, will be likely to fall into the error of judging the picture by its dramatic presentation</p>
                  </div><!-- /.description -->

                  <a href="#" class="btn">More <i class="ti-arrow-right"></i></a>
                </div><!-- /.entry-content -->
              </div><!-- /.content -->
            </article><!--/.post-->

            <article class="post type-post format-video">
              <div class="entry-thumbnail">
                <div class="video-pop">
                  <img src="images/blog/01/8.jpg" alt="video">
                  <a class="iframe" href="http://vimeo.com/167409747"><i class="fa fa-play"></i></a>
                </div><!--/.video-pop-->
              </div>

              <div class="post-content media">
                <div class="entry-meta media-left">
                  <time datetime="2016-02-15"><span class="date">15</span> <span class="month">Feb</span></time>
                </div><!-- /.entry-meta -->

                <div class="entry-content media-body">
                  <h2 class="entry-title"><a href="#">BOOKS THAT ARE ABOUT AFRICA</a></h2><!-- /.entry-title -->

                  <div class="meta-info">
                    <span class="author"><i class="ti-user"></i><a href="#">John Doe</a></span>
                    <span class="cat-links"><i class="ti-tag"></i><a href="#">WordPress</a>, <a href="#">Coding</a></span>
                    <span class="comments-link"><i class="ti-comment"></i><a href="#">25 Comments</a></span>
                  </div><!-- /.meta-info -->

                  <div class="description">
                    <p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap. type and scrambled it to make a type specimen. </p>
                  </div><!-- /.description -->

                  <a href="#" class="btn">More <i class="ti-arrow-right"></i></a>
                </div><!-- /.entry-content -->
              </div><!-- /.content -->
            </article><!--/.post-->

            <article class="post type-post format-audio">
              <div class="entry-thumbnail">
                <iframe class="post-audio" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/161730338&amp;"></iframe>
              </div>

              <div class="post-content media">
                <div class="entry-meta media-left">
                  <time datetime="2016-02-15"><span class="date">15</span> <span class="month">Feb</span></time>
                </div><!-- /.entry-meta -->

                <div class="entry-content media-body">
                  <h2 class="entry-title"><a href="#">architecto beatae vitae</a></h2><!-- /.entry-title -->

                  <div class="meta-info">
                    <span class="author"><i class="ti-user"></i><a href="#">John Doe</a></span>
                    <span class="cat-links"><i class="ti-tag"></i><a href="#">WordPress</a>, <a href="#">Coding</a></span>
                    <span class="comments-link"><i class="ti-comment"></i><a href="#">25 Comments</a></span>
                  </div><!-- /.meta-info -->

                  <div class="description">
                    <p>Architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos. </p>
                  </div><!-- /.description -->

                  <a href="#" class="btn">More <i class="ti-arrow-right"></i></a>
                </div><!-- /.entry-content -->
              </div><!-- /.content -->
            </article><!--/.post-->            

            <article class="post type-post format-quote">
              <div class="entry-thumbnail">
                <blockquote class="post-quote">
                  In the design process, my gut instinct is my best critic. I just wished I would always listen to it!
                </blockquote>
                <span class="name">Bryan Tamayo</span><!--/.name-->
              </div>
            </article><!--/.post-->


            <article class="post type-post text-only">

              <div class="post-content media">
                <div class="entry-meta media-left">
                  <time datetime="2016-02-15"><span class="date">15</span> <span class="month">Feb</span></time>
                </div><!-- /.entry-meta -->

                <div class="entry-content media-body">
                  <h2 class="entry-title"><a href="#">architecto beatae vitae</a></h2><!-- /.entry-title -->

                  <div class="meta-info">
                    <span class="author"><i class="ti-user"></i><a href="#">John Doe</a></span>
                    <span class="cat-links"><i class="ti-tag"></i><a href="#">WordPress</a>, <a href="#">Coding</a></span>
                    <span class="comments-link"><i class="ti-comment"></i><a href="#">25 Comments</a></span>
                  </div><!-- /.meta-info -->

                  <div class="description">
                    <p>Architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos. </p>
                  </div><!-- /.description -->

                  <a href="#" class="btn">More <i class="ti-arrow-right"></i></a>
                </div><!-- /.entry-content -->
              </div><!-- /.content -->
            </article><!--/.post-->

            <article class="post type-post format-standard">
              <div class="entry-thumbnail">
                <img src="images/blog/01/9.jpg" alt="blog">
              </div>

              <div class="post-content media">
                <div class="entry-meta media-left">
                  <time datetime="2016-02-15"><span class="date">15</span> <span class="month">Feb</span></time>
                </div><!-- /.entry-meta -->

                <div class="entry-content media-body">
                  <h2 class="entry-title"><a href="#">Standard Blog Post</a></h2><!-- /.entry-title -->

                  <div class="meta-info">
                    <span class="author"><i class="ti-user"></i><a href="#">John Doe</a></span>
                    <span class="cat-links"><i class="ti-tag"></i><a href="#">WordPress</a>, <a href="#">Coding</a></span>
                    <span class="comments-link"><i class="ti-comment"></i><a href="#">25 Comments</a></span>
                  </div><!-- /.meta-info -->

                  <div class="description">
                    <p>What's the point at ordinary pleasures into specific pleasures derived from each one. Our judgment about the merits of any given work of art depends to a large extent upon our answer to this question. </p>
                  </div><!-- /.description -->

                  <a href="#" class="btn">More <i class="ti-arrow-right"></i></a>
                </div><!-- /.entry-content -->
              </div><!-- /.content -->
            </article><!--/.post-->

            <article class="post type-post format-link">
              <div class="entry-thumbnail background-bg" data-image-src="images/blog/link-bg.jpg">
                <div class="link">
                  <span class="link-title"> ELEVATION - Charity/Nonprofit/Fundraising Template</span>
                  <a href="http://themeforest.net/item/elevation-charitynonprofitfundraising-template/12318455">http://themeforest.net/item/elevation-charitynonprofitfundraising-template/12318455</a>
                </div><!--/.quote-->
              </div>

              <div class="post-content media">
                <div class="entry-meta media-left">
                  <time datetime="2016-02-15"><span class="date">15</span> <span class="month">Feb</span></time>
                </div><!-- /.entry-meta -->

                <div class="entry-content media-body">
                  <h2 class="entry-title"><a href="#">Excepteur sint occaecat cupidatat </a></h2><!-- /.entry-title -->

                  <div class="meta-info">
                    <span class="author"><i class="ti-user"></i><a href="#">John Doe</a></span>
                    <span class="cat-links"><i class="ti-tag"></i><a href="#">WordPress</a>, <a href="#">Coding</a></span>
                    <span class="comments-link"><i class="ti-comment"></i><a href="#">25 Comments</a></span>
                  </div><!-- /.meta-info -->

                  <div class="description">
                    <p>I must have the illusion of varying muscular sensations inside my palm and fingers corresponding to the various projections of this figure, before I shall take it for granted as real</p>
                  </div><!-- /.description -->

                  <a href="#" class="btn">More <i class="ti-arrow-right"></i></a>
                </div><!-- /.entry-content -->
              </div><!-- /.content -->
            </article><!--/.post-->

            <div class="pagination">
              <a href="#" class="prev"><i class="ti-angle-double-left"></i></a>
              <a href="#" class="active">1</a>
              <a href="#">2</a>
              <a href="#">...</a>
              <a href="#">7</a>
              <a href="#">8</a>
              <a href="#" class="next"><i class="ti-angle-double-right"></i></a>
            </div><!--/.pagination-->

          </div>



          <div class="col-md-4">
            <aside class="sidebar">
              <div class="widget widget_search">
                <div class="widget-details">
                  <form method="get" class="search-form" action="#">
                    <input type="text" class="form-control" placeholder="Search" name="s" title="Search for:" required>
                    <button type="submit" class="search-submit"><span class="fa fa-search"></span></button>
                  </form>
                </div><!-- /.widget-details -->
              </div><!--/.widget-->

              <div class="widget widget_categories">
                <h2 class="widget-title">Categories <span></span></h2><!-- /.widget-title -->
                <div class="widget-details">
                  <ul>
                    <li><a href="#">Gadgets<span class="count">23</span></a></li>
                    <li><a href="#">Microsoft Windows<span class="count">23</span></a></li>
                    <li><a href="#">Computers<span class="count">23</span></a></li>
                    <li><a href="#">Apple products<span class="count">23</span></a></li>
                    <li><a href="#">Laptops<span class="count">23</span></a></li>
                    <li><a href="#">Video games<span class="count">23</span></a></li>
                    <li><a href="#">Smartphones<span class="count">23</span></a></li>
                  </ul>
                </div><!-- /.widget-details -->
              </div><!--/.widget-->

              <div class="widget widget_popular_post">
                <h2 class="widget-title">Popular Posts <span></span></h2><!-- /.widget-title -->
                <div class="widget-details">
                  <article class="post type-post media">
                    <div class="entry-thumbnail media-left">
                      <img src="images/blog/sidebar/1.jpg" alt="post"/>
                    </div><!--/.post-thumbnail-->

                    <div class="post-content media-body">
                      <h3 class="entry-title"><a href="#">Standard Blog Post Title Goes Here</a></h3>
                      <div class="entry-meta">
                        <span class="post-date"><i class="ti-calendar"></i><a href="#"><time datetime="2016-06-10">10 May, 2016</time></a></span>
                        <span class="posted-on"><i class="ti-comment"></i><a href="#">22</a></span>
                      </div><!-- /.entry-meta -->
                    </div><!--/.post-content media-body-->
                  </article>
                  <article class="post type-post media">
                    <div class="entry-thumbnail media-left">
                      <img src="images/blog/sidebar/2.jpg" alt="post"/>
                    </div><!--/.post-thumbnail-->

                    <div class="post-content media-body">
                      <h3 class="entry-title"><a href="#">Standard Blog Post Title Goes Here</a></h3>
                      <div class="entry-meta">
                        <span class="post-date"><i class="ti-calendar"></i><a href="#"><time datetime="2016-06-10">10 May, 2016</time></a></span>
                        <span class="posted-on"><i class="ti-comment"></i><a href="#">22</a></span>
                      </div><!-- /.entry-meta -->
                    </div><!--/.post-content media-body-->
                  </article>
                  <article class="post type-post media">
                    <div class="entry-thumbnail media-left">
                      <img src="images/blog/sidebar/3.jpg" alt="post"/>
                    </div><!--/.post-thumbnail-->

                    <div class="post-content media-body">
                      <h3 class="entry-title"><a href="#">Standard Blog Post Title Goes Here</a></h3>
                      <div class="entry-meta">
                        <span class="post-date"><i class="ti-calendar"></i><a href="#"><time datetime="2016-06-10">10 May, 2016</time></a></span>
                        <span class="posted-on"><i class="ti-comment"></i><a href="#">22</a></span>
                      </div><!-- /.entry-meta -->
                    </div><!--/.post-content media-body-->
                  </article>
                </div><!-- /.widget-details -->
              </div><!--/.widget-->

              <div class="widget widget_tag_cloud">
                <h2 class="widget-title">Tags <span></span></h2><!-- /.widget-title -->
                <div class="widget-details">
                  <div class="tagcloud">
                    <a href="#">Shop</a>
                    <a href="#">Woman</a>
                    <a href="#">Clothing</a>
                    <a href="#">Electronics</a>
                    <a href="#">Kids</a>
                    <a href="#">Jewelry</a>
                    <a href="#">Furniture</a>
                    <a href="#">Interior</a>
                    <a href="#">Design</a>
                  </div><!--/.tagcloud-->
                </div><!-- /.widget-details -->
              </div><!--/.widget-->

              <div class="widget widget_twitter_feed">
                <div class="widget-details">
                  <div id="tweet-slider" class="tweet-slider bg-gray carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                      <li data-target="#tweet-slider" data-slide-to="0" class="active"></li>
                      <li data-target="#tweet-slider" data-slide-to="1"></li>
                      <li data-target="#tweet-slider" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner" role="listbox">
                      <div class="item active">
                        <div class="item-top">
                          <img src="images/tweet.png" alt="Author Image">
                          <span class="name">@Keith Harrison</span>
                        </div><!-- /.item-top -->
                        <div class="item-details">
                          <p>MAMA - Creative Minimal Portfolio WordPress Theme by  <a href="#">@jwthemeltd</a> <a href="#">http://goo.gl/6CbMtH</a></p>
                          <span class="time">3 hours ago</span>
                        </div><!-- .item-details -->
                      </div><!-- /.item -->

                      <div class="item">
                        <div class="item-top">
                          <img src="images/tweet.png" alt="Author Image">
                          <span class="name">@Alice Patterson</span>
                        </div><!-- /.item-top -->
                        <div class="item-details">
                          <p>MAMA - Creative Minimal Portfolio WordPress Theme by  <a href="#">@jwthemeltd</a> <a href="#">http://goo.gl/6CbMtH</a></p>
                          <span class="time">3 hours ago</span>
                        </div><!-- .item-details -->
                      </div><!-- /.item -->

                      <div class="item">
                        <div class="item-top">
                          <img src="images/tweet.png" alt="Author Image">
                          <span class="name">@George Marshall</span>
                        </div><!-- /.item-top -->
                        <div class="item-details">
                          <p>MAMA - Creative Minimal Portfolio WordPress Theme by  <a href="#">@jwthemeltd</a> <a href="#">http://goo.gl/6CbMtH</a></p>
                          <span class="time">3 hours ago</span>
                        </div><!-- .item-details -->
                      </div><!-- /.item -->

                    </div><!-- /.carousel-inner -->
                  </div><!-- /#tweet-slider -->
                </div><!-- /.widget-details -->
              </div><!--/.widget-->

            </aside><!--/.sidebar-->
          </div>

        </div><!--/.row-->
      </div><!--/.container-->
    </div><!-- /.section-padding -->
  </section><!-- /.blog-posts -->







  <%@include file="function/footer.jsp"%>



  <div id="scroll-to-top" class="scroll-to-top">
    <i class="fa fa-angle-double-up"></i>    
  </div>



  <script src="assets/js/plugins.js"></script>
  <script src="assets/js/main.js"></script>


</body>
</html>





