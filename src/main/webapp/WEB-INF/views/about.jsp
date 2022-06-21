<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Hotel Montana</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

        <!-- CSS here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/gijgo.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/slicknav.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/utill.css">
    </head>
    <body>

        <!-- header-start -->
        <header>
            <div class="header-area ">
                <div id="sticky-header" class="main-header-area">
                    <div class="container-fluid p-0">
                        <div class="row align-items-center no-gutters">
                            <div class="col-xl-5 col-lg-6">
                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a class="active" href="home">home</a></li>
                                            <li><a href="rooms">Rooms</a></li>
                                            <li><a href="about">About</a></li>
                                            <li><a href="contact_manager">Contact Manager</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-2">
                                <div class="logo-img">
                                    <a href="home">
                                        <img src="img/logo.png" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-4 d-none d-lg-block">
                                <div class="book_room">
                                    <div class="socail_links">
                                        <ul>
                                            <li>
                                                <a href="https://www.instagram.com/hotelmontana1/" target="_blank">
                                                    <i class="fa fa-instagram"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="book_btn d-none d-lg-block">
                                        <a class="popup-with-form" href="#test-form" id="manageAGuestLink">Manage a Guest</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- header-end -->

        <!-- bradcam_area_start -->
        <div class="bradcam_area breadcam_bg">
            <h3>About Montana</h3>
        </div>
        <!-- bradcam_area_end -->

        <!-- about_area_start -->
        <div class="about_area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-5">
                        <div class="about_info">
                            <div class="section_title mb-20px">
                                <span>About Us</span>
                                <h3>A Luxuries Hotel <br>
                                    with Nature and Beach</h3> 
                            </div>
                            <p>Hotel Montana consists of two parts.The first half of the Hotel is at the beach
                                and the other half is in nature. You can either hear the ocean while you sleep
                                or relax on the deck with sounds from nature.</p>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7">
                        <div class="about_thumb d-flex">
                            <div class="img_1">
                                <img src="img/about/about_1.png" alt="">
                            </div>
                            <div class="img_2">
                                <img src="img/about/about_2.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- about_area_end -->

        <!-- about_info_area_start -->
        <div class="about_info_area">
            <div class="about_active owl-carousel">
                <div class="single_slider about_bg_1"></div>
                <div class="single_slider about_bg_1"></div>
                <div class="single_slider about_bg_1"></div>
                <div class="single_slider about_bg_1"></div>
            </div>
        </div>
        <!-- about_info_area_start -->

        <!-- about_main_info_start -->
        <div class="about_main_info">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-md-6">
                        <div class="single_about_info">
                            <h3>We Serve Fresh and <br>
                                Delicious Food</h3>
                            <p>Enjoy a rich variety of dishes and aromatic Italian coffee, 
                                selection of juices, aromatic teas and delicious desserts.
                                Stay healthy with our healthy corner serving fresh vegetables, fruits and yoghurts.</p>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="single_about_info">
                            <h3>For night owls special cocktails</h3>
                            <p>Enjoy a variety of different mixed drinks available
                                only at night. Relax with a good drink and dance like
                                nobody's watching.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- about_main_info_end -->

        <!-- forQuery_start -->
        <div class="forQuery">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1 col-md-12">
                        <div class="Query_border">
                            <div class="row align-items-center justify-content-center">
                                <div class="col-xl-6 col-md-6">
                                    <div class="Query_text">
                                        <p>For Reservation 0r Query?</p>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="phone_num">
                                        <!-- disabled link-->
                                        <a role="link" aria-disabled="true" class="mobile_no">+995 555 00 88 77</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- forQuery_end-->

        <!-- instragram_area_start -->
        <div class="instragram_area">
            <div class="single_instagram">
                <img src="img/instragram/1.png" alt="">
                <div class="ovrelay">
                    <a href="https://www.instagram.com/hotelmontana1/" target="_blank">
                        <i class="fa fa-instagram"></i>
                    </a>
                </div>
            </div>
            <div class="single_instagram">
                <img src="img/instragram/2.png" alt="">
                <div class="ovrelay">
                    <a href="https://www.instagram.com/hotelmontana1/" target="_blank">
                        <i class="fa fa-instagram"></i>
                    </a>
                </div>
            </div>
            <div class="single_instagram">
                <img src="img/instragram/3.png" alt="">
                <div class="ovrelay">
                    <a href="https://www.instagram.com/hotelmontana1/" target="_blank">
                        <i class="fa fa-instagram"></i>
                    </a>
                </div>
            </div>
            <div class="single_instagram">
                <img src="img/instragram/4.png" alt="">
                <div class="ovrelay">
                    <a href="https://www.instagram.com/hotelmontana1/" target="_blank">
                        <i class="fa fa-instagram"></i>
                    </a>
                </div>
            </div>
            <div class="single_instagram">
                <img src="img/instragram/5.png" alt="">
                <div class="ovrelay">
                    <a href="https://www.instagram.com/hotelmontana1/" target="_blank">
                        <i class="fa fa-instagram"></i>
                    </a>
                </div>
            </div>
        </div>
        <!-- instragram_area_end -->

        <!-- footer -->
        <footer class="footer">
            <div class="footer_top">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-md-6 col-lg-3">
                            <div class="footer_widget">
                                <h3 class="footer_title">
                                    address
                                </h3>
                                <p class="footer_text"> 200, Green road, Mongla, <br>
                                    New Yor City USA</p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6 col-lg-3">
                            <div class="footer_widget">
                                <h3 class="footer_title">
                                    Reservation
                                </h3>
                                <p class="footer_text">+995 555 00 88 77<br>
                                    reservation@montana.com</p>
                            </div>
                        </div>
                        <div class="col-xl-2 col-md-6 col-lg-2">
                            <div class="footer_widget">
                                <h3 class="footer_title">
                                    Navigation
                                </h3>
                                <ul>
                                    <li><a class="active" href="home">home</a></li>
                                    <li><a href="rooms">Rooms</a></li>
                                    <li><a href="about">About</a></li>
                                    <li><a href="contact_manager">Contact Manager</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copy-right_text">
                <div class="container">
                    <div class="footer_border"></div>
                    <div class="row">
                        <div class="col-xl-8 col-md-7 col-lg-9">
                            <p class="copy_right">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                        <div class="col-xl-4 col-md-5 col-lg-3">
                            <div class="socail_links">
                                <ul>
                                    <li>
                                        <a href="https://www.instagram.com/hotelmontana1/" target="_blank">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer_end -->

        <!-- form itself end-->
        <form:form id="test-form" class="white-popup-block mfp-hide" action="admin_page" method="post" modelAttribute="admin">
            <div class="popup_box ">
                <div class="popup_inner">
                    <h3>LOG IN</h3>
                    <div class="row">
                        <div class="col-xl-6">
                            <form:label path="username">Username:</form:label>
                            <form:input path="username" />
                            <form:errors path="username" cssClass="error" />
                        </div>
                        <div class="col-xl-6">
                            <form:label path="password">Password:</form:label>
                            <form:password path="password"/>
                            <form:errors path="password" cssClass="error" />
                        </div>
                        <div class="col-xl-12">
                            <button type="submit" class="boxed-btn3">Log In</button>
                        </div>
                    </div>
                    <div>
                        <label class="invalid" id="invalidLoginLabel">${invalidLogin}</label>
                    </div>
                </div>
            </div>
        </form:form>
        <!-- form itself end -->

        <!-- JS here -->
        <script src="js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="js/vendor/jquery-1.12.4.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/ajax-form.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/jquery.counterup.min.js"></script>
        <script src="js/imagesloaded.pkgd.min.js"></script>
        <script src="js/scrollIt.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/nice-select.min.js"></script>
        <script src="js/jquery.slicknav.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/gijgo.min.js"></script>

        <!--contact js-->
        <script src="js/contact.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.form.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/mail-script.js"></script>

        <script src="js/main.js"></script>

        <script>

                                    //admin log in form
                                    function clickAdminForm() {
                                        window.onload = function () {
                                            if (document.getElementById('manageAGuestLink') !== null || document.getElementById('manageAGuestLink') !== "") {
                                                document.getElementById('manageAGuestLink').click();
                                            }
                                        };
                                    }

                                    if (document.getElementById('username.errors') !== null) {
                                        if (document.getElementById('username.errors').innerHTML === "Username needed!") {
                                            clickAdminForm();
                                        }
                                    }
                                    if (document.getElementById('password.errors') !== null) {
                                        if (document.getElementById('password.errors').innerHTML === "Password needed!") {
                                            clickAdminForm();
                                        }
                                    }

                                    if (document.getElementById('invalidLoginLabel').innerHTML === "Incorrect username or password!") {
                                        clickAdminForm();
                                    }

        </script>
    </body>
</html>
