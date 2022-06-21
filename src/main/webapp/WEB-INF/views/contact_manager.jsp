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
        <div class="bradcam_area breadcam_bg_2">
            <h3>Get in Touch</h3>
        </div>
        <!-- bradcam_area_end -->

        <!-- ================ contact section start ================= -->
        <section class="contact-section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Contact Manager</h2>
                    </div>
                    <div class="col-lg-8">
                        <form:form class="form-contact contact_form" action="show_message" method="post" modelAttribute="managerMessage">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <form:input path="subject" placeholder="Enter Subject" class="form-control" id="subject"/>
                                        <form:errors path="subject" cssClass="error" />
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <form:textarea path = "message" rows = "9" cols = "30" class="form-control w-100" id="message" placeholder="Enter Message"/>
                                        <form:errors path="message" cssClass="error" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="boxed-btn3">Send</button>
                            </div>
                        </form:form>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Buttonwood, California.</h3>
                                <p>Rosemead, CA 91770</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                            <div class="media-body">
                                <h3>+1 253 565 2365</h3>
                                <p>Mon to Fri 9am to 6pm</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-email"></i></span>
                            <div class="media-body">
                                <h3>support@montana.com</h3>
                                <p>Send us your query anytime!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ================ contact section end ================= -->

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


        <!-- form itself end display:none; in css hides this form-->
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
