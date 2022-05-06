<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="/resources/img/favicon.ico" type="image/ico">
  <!--Box Icons-->
  <link rel="stylesheet" href="/resources/fonts/boxicons/css/boxicons.min.css">

  <!--AOS Animations-->
  <link rel="stylesheet" href="/resources/vendor/node_modules/css/aos.css">

  <!--Iconsmind Icons-->
  <link rel="stylesheet" href="/resources/fonts/iconsmind/iconsmind.css">

  <!--Google fonts-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&family=Source+Serif+Pro:ital@0;1&display=swap"
    rel="stylesheet">
  <!-- Main CSS -->
  <link href="/resources/css/theme-shop.min.css" rel="stylesheet">

  <title>Fiennale</title>
</head>

<body>

  	 <!--Preloader Spinner-->
  <div class="spinner-loader bg-tint-primary">
    <div class="spinner-border text-primary" role="status">
    </div>
    <span class="small d-block ms-2">Loading...</span>
  </div>
  
  <!--Header Start-->
  <header class="z-index-fixed header-transparent header-absolute-top sticky-reverse">
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container position-relative">
        <a class="navbar-brand" href="index.html">
          <img src="/resources/img/logo/logo.svg" alt="" class="img-fluid">
        </a>
        <div class="d-flex align-items-center navbar-no-collapse-items order-lg-last">
          <button class="navbar-toggler order-last" type="button" data-bs-toggle="collapse"
            data-bs-target="#mainNavbarTheme" aria-controls="mainNavbarTheme" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon">
              <i></i>
            </span>
          </button>
          <div class="nav-item me-3 me-lg-0">
            <a href="#" class="btn btn-success btn-sm rounded-pill">Purchase</a>
          </div>
        </div>
        <div class="collapse navbar-collapse" id="mainNavbarTheme">
          <!--Navbar items-->
          <ul class="navbar-nav ms-auto">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle  " href="index.html" role="button" data-bs-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">Landings
              </a>
              <div class="dropdown-menu dropdown-menu-md dropdown-menu-start py-0 overflow-hidden">
                <div class="row">
                  <div class="col-lg-5 ps-lg-4 position-relative">
                    <div class="py-1 py-lg-3 d-lg-flex flex-column">
                      <a href="index.html" class="dropdown-item">Welcome</a>
                      <a href="index-landing-classic.html" class="dropdown-item">Classic Landing</a>
                      <a href="index-landing-creative.html" class="dropdown-item">Creative</a>
                      <a href="index-landing-agency.html" class="dropdown-item">Agency</a>
                      <a href="index-landing-business.html" class="dropdown-item">Business</a>
                      <a href="index-landing-startup.html" class="dropdown-item">Startup</a>
                      <a href="index-landing-consultancy.html" class="dropdown-item">Consultancy</a>
                      <a href="index-landing-saas-webapp.html" class="dropdown-item">Saas WebApp</a>
                      <a href="index-landing-mobile-App.html" class="dropdown-item">Mobile App</a>
                      <a href="index-landing-personal-portfolio.html" class="dropdown-item">Personal Portfolio</a>
                      <a href="index-dark.html" class="dropdown-item">Dark</a>
                    </div>
                  </div>
                  <!--/.col-->
                  <div class="col-lg-7 d-none d-lg-block position-relative bg-no-repeat bg-cover bg-center"
                    style="background-image: url('/resources/img/960x1140/3.jpg')">
                    <div class="position-absolute w-100 h-100 top-0 start-0 bg-gradient-primary opacity-75">
                    </div>
                    <div
                      class="p-4 d-flex flex-column align-items-center text-center justify-content-center h-100 py-5 position-relative text-white">
                      <h5 class="display-6 mb-4">Ultimate modern design toolkit</h5>
                      <p class="mb-0">Built with lots of love and patient</p>
                      <p>
                    </div>
                  </div>
                  <!--/.col-->
                </div>
                <!--/.row-->
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle  " href="#" role="button" data-bs-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false" data-bs-auto-close="outside">Portfolio
              </a>
              <div class="dropdown-menu">
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Classic</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="portfolio-classic-2-col.html">2 Col</a>
                    <a class="dropdown-item" href="portfolio-classic-3-col.html">3 Col</a>
                    <a class="dropdown-item" href="portfolio-classic-4-col.html">4 Col</a>
                    <a class="dropdown-item" href="portfolio-classic-masonry.html">Masonry</a>
                  </div>
                </div>
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Grid
                    Overlay</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="portfolio-grid-overlay-2-col.html">2 Col</a>
                    <a class="dropdown-item" href="portfolio-grid-overlay-3-col.html">3 Col</a>
                    <a class="dropdown-item" href="portfolio-grid-overlay-4-col.html">4 Col</a>
                    <a class="dropdown-item" href="portfolio-grid-overlay-masonry.html">Masonry</a>
                  </div>
                </div>
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Full
                    width</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="portfolio-full-width-3-col.html">3 Col</a>
                    <a class="dropdown-item" href="portfolio-full-width-4-col.html">4 Col</a>
                    <a class="dropdown-item" href="portfolio-full-width-masonry.html">Masonry</a>
                  </div>
                </div>
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Project
                    Layouts</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="portfolio-case-study.html">Case Study</a>
                    <a class="dropdown-item" href="portfolio-single-classic.html">classic</a>
                  </div>
                </div>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle  " href="#" role="button" data-bs-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false" data-bs-auto-close="outside">Blog
              </a>
              <div class="dropdown-menu">
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Blog
                    Layouts</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="blog-classic.html">Blog classic</a>
                    <a class="dropdown-item" href="blog-standard.html">Blog standard</a>
                    <a class="dropdown-item" href="blog-masonry.html">Blog Masonry</a>
                    <a class="dropdown-item" href="blog-sidebar.html">Blog Sidebar</a>
                    <a class="dropdown-item" href="blog-magazine.html">Blog magazine</a>
                  </div>
                </div>
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Article
                    Layouts</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="blog-article-basic.html">Basic</a>
                    <a class="dropdown-item" href="blog-article-video.html">Video</a>
                    <a class="dropdown-item" href="blog-article-gallery.html">Gallery</a>
                    <a class="dropdown-item" href="blog-article-parallax.html">Parallax
                      Header</a>
                  </div>
                </div>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle  active" href="#" role="button" data-bs-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false" data-bs-auto-close="outside">Pages
              </a>
              <div class="dropdown-menu">
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown"
                    href="#">About</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="page-about.html">About Company</a>
                    <a class="dropdown-item" href="page-about-modern.html">About modern</a>
                    <a class="dropdown-item" href="page-team.html">Our Team</a>
                  </div>
                </div>
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" href="#" aria-expanded="false"
                    data-bs-toggle="dropdown">Services</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="page-services.html">Services</a>
                    <a class="dropdown-item" href="page-services-modern.html">Services
                      Modern</a>
                  </div>
                </div>
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Career</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="page-careers.html">careers</a>
                    <a class="dropdown-item" href="page-career-single.html">career single</a>
                  </div>
                </div>
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Customers</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="page-customers.html">Customers</a>
                    <a class="dropdown-item" href="page-customer-story.html">Customer Story</a>
                  </div>
                </div>
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Account</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="page-profile.html">Profile</a>
                    <a class="dropdown-item" href="page-account-signin.html">Sign In</a>
                    <a class="dropdown-item" href="page-account-signin-alt.html">Sign In alt</a>
                    <a class="dropdown-item" href="page-account-signup.html">Sign Up</a>
                    <a class="dropdown-item" href="page-account-signup-alt.html">Sign Up Alt</a>
                    <a class="dropdown-item" href="page-account-forget-password.html">Forget Password</a>
                  </div>
                </div>
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Misc</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="page-misc-error-404.html">Error 404</a>
                    <a class="dropdown-item" href="page-misc-coming-soon.html">Coming Soon</a>
                    <a class="dropdown-item" href="page-misc-maintenance.html">Maintenance</a>
                    <a class="dropdown-item" href="page-misc-success-message.html">Success Message</a>
                    <a class="dropdown-item" href="page-misc-policy.html">Privacy Policy</a>
                  </div>
                </div>
                <a class="dropdown-item" href="page-pricing.html">Pricing Plans</a>
                <a class="dropdown-item" href="page-faq.html">Faq</a>
                <a class="dropdown-item" href="page-knowladge-base.html">Knowladge Base</a>
                <div class="dropend">
                  <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Contact</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="page-contact-us-1.html">Contact Us 1</a>
                    <a class="dropdown-item" href="page-contact-us-2.html">Contact Us 2</a>
                  </div>
                </div>
              </div>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>
  </header>
	
  <!--Main content-->
  <main>
    <section class="position-relative bg-tint-primary">
      <!--Divider shape bottom-->
      <svg class="position-absolute start-0 bottom-0 text-white" preserveAspectRatio="none" width="100%" height="288"
        viewBox="0 0 1200 288" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd"
          d="M0 144L100 150C200 156 400 168 600 144C800 120 1000 60 1100 30L1200 0V288H1100C1000 288 800 288 600 288C400 288 200 288 100 288H0V144Z"
          fill="currentColor" />
      </svg>

      <div class="container pt-14 pb-9 position-relative z-index-1">
        <div class="row pt-lg-5 pb-7 align-items-center">
          <div class="col-lg-10 mx-auto text-center">
            <h1 class="display-2 mb-4">
              We make good designs for Web and Mobile
            </h1>
            <p class="mb-11 mb-lg-14 lead w-lg-80 mx-auto">Creative designs and user-friendly interfaces can contribute
              to
              your business success in web and mobile</p>
            <a href="#next"
              class="text-muted width-8x height-8x shadow bg-white rounded-circle flex-center d-flex text-center mx-auto">
              <div class="link-arrow-bounce">
                <i class="bx bx-down-arrow-alt fs-4"></i>
              </div>
            </a>
          </div>
        </div>
        <!--/.end-row--->
      </div>
      <!--/.End-content-->
    </section>


    <!-- 소개 -->
    <section class="position-relative overflow-hidden" id="next">
      <div class="container py-9 py-lg-11">

        <!--김한수-->
        <div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
          <div class="col-md-6 mb-5 mb-md-0" data-aos="fade-left" data-aos-delay="100">
            <img src="/resources/img/960x900/1.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
          </div>
          <div class="col-md-4" data-aos="fade-right">
            <div class="d-flex align-items-center mb-4">
              <h1 class="mb-0 display-6">
                Hansoo Kim
              </h1>
            </div>
            <!--/.End heading-->
            <p class="mb-4">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur.
            </p>
            <ul class="list-unstyled text-dark">
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Brand identity</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Illustration</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Packaging and labelling</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Editorial design</span>
              </li>
              <li class="d-flex align-items-center">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Promotional marketing</span>
              </li>
            </ul>
          </div>
          <!--/.End Col-->
        </div>

        <!--권민성-->
        <div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
          <div class="col-md-6 mb-5 mb-md-0 order-md-last" data-aos="fade-left" data-aos-delay="100">
            <img src="/resources/img/960x900/4.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
          </div>
          <div class="col-md-4 order-md-1" data-aos="fade-right" data-aos-delay="100">
            <div class="d-flex align-items-center mb-4">
              <h1 class="mb-0 display-6">
               	Minsung Kwon
              </h1>
            </div>
            <!--/.End heading-->
            <p class="mb-4">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur.

            </p>
            <ul class="list-unstyled text-dark">
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Web design</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>UI/UX design &amp; prototyping</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>App design</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Front- and backend coding</span>
              </li>
              <li class="d-flex align-items-center">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Seo and marketing</span>
              </li>
            </ul>
          </div>
          <!--/.End Col-->
        </div>

        <!--성유나-->
        <div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
          <div class="col-md-6 mb-5 mb-md-0" data-aos="fade-left" data-aos-delay="100">
            <img src="/resources/img/960x900/3.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
          </div>
          <div class="col-md-4" data-aos="fade-right" data-aos-delay="150">
            <div class="d-flex align-items-center mb-4">
              <h1 class="mb-0 display-6">
                Youna Seong
              </h1>
            </div>
            <!--/.End heading-->
            <p class="mb-4">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur.
            </p>
            <ul class="list-unstyled text-dark mb-0">
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content creation</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Copywriting</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content analysis</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content strategy</span>
              </li>
              <li class="d-flex align-items-center">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content management systems (CMS)</span>
              </li>
            </ul>
          </div>
          <!--/.End Col-->
        </div>

        <!--오정민-->
        <div class="row justify-content-lg-around mb-7 mb-lg-11 align-items-center">
          <div class="col-md-6 mb-5 mb-md-0 order-md-last" data-aos="fade-left" data-aos-delay="100">
            <img src="/resources/img/960x900/2.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
          </div>
          <div class="col-md-4 order-md-1" data-aos="fade-right" data-aos-delay="200">
            <div class="d-flex align-items-center mb-4">
              <h1 class="mb-0 display-6">
                Jeongmin Oh
              </h1>
            </div>
            <!--/.End heading-->
            <p class="mb-4">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur.
            </p>
            <ul class="list-unstyled text-dark mb-0">
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Digital marketing</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Print advertising</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Campaign visuals</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Editorial design</span>
              </li>
              <li class="d-flex align-items-center">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Label and package design</span>
              </li>
            </ul>
          </div>
          <!--/.End Col-->
        </div>

        <!--정은성-->
        <div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
          <div class="col-md-6 mb-5 mb-md-0" data-aos="fade-left" data-aos-delay="100">
            <img src="/resources/img/960x900/3.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
          </div>
          <div class="col-md-4" data-aos="fade-right" data-aos-delay="150">
            <div class="d-flex align-items-center mb-4">
              <h1 class="mb-0 display-6">
                Eunseong Jeong
              </h1>
            </div>
            <!--/.End heading-->
            <p class="mb-4">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur.
            </p>
            <ul class="list-unstyled text-dark mb-0">
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content creation</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Copywriting</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content analysis</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content strategy</span>
              </li>
              <li class="d-flex align-items-center">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content management systems (CMS)</span>
              </li>
            </ul>
          </div>
          <!--/.End Col-->
        </div>
      </div>

    </section>

  </main>

  <jsp:include page="/footer.jsp" />


  <!-- scripts -->
  <script src="/resources/js/theme.bundle.js"></script>
</body>

</html>
