<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <!-- slider_area_start -->
        <div class="slider_area">
            <div class="slider_active owl-carousel">
                <div class="single_slider d-flex align-items-center justify-content-center slider_bg_1">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="slider_text text-center">
                                    <h3>Montana Resort</h3>
                                    <p>Enjoy the beautiful view of Montana</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single_slider  d-flex align-items-center justify-content-center slider_bg_2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="slider_text text-center">
                                    <h3>Life is Beautiful</h3>
                                    <p>Beach is just around the corner</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single_slider d-flex align-items-center justify-content-center slider_bg_1">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="slider_text text-center">
                                    <h3>Montana Resort</h3>
                                    <p>Enjoy the beautiful view of Montana</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single_slider  d-flex align-items-center justify-content-center slider_bg_2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="slider_text text-center">
                                    <h3>Life is Beautiful</h3>
                                    <p>Beach is just around the corner</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider_area_end -->

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

        <!-- offers_area_start -->
        <div class="offers_area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="section_title text-center mb-100">
                            <span>Our Offers</span>
                            <h3>Ongoing Offers</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-md-4">
                        <div class="single_offers">
                            <div class="about_thumb">
                                <img src="img/offers/1.png" alt="">
                            </div>
                            <h3>Up to 35% savings on Club <br>
                                rooms and Suites</h3>
                            <ul>
                                <li>Luxaries condition</li>
                                <li>3 Adults & 2 Children size</li>
                                <li>Sea view side</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-4">
                        <div class="single_offers">
                            <div class="about_thumb">
                                <img src="img/offers/2.png" alt="">
                            </div>
                            <h3>Save up to 5% with credit card</h3>
                            <ul>
                                <li>Fast and Simple</li>
                                <li>Secure and reliable</li>
                                <li>Bonus points</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-4">
                        <div class="single_offers">
                            <div class="about_thumb">
                                <img src="img/offers/3.png" alt="">
                            </div>
                            <h3>Up to 10% savings for people over 60</h3>
                            <ul>
                                <li>Hotel Montana takes care of you</li>
                                <li>Discount on all our services</li>
                                <li>Free breakfast</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- offers_area_end -->

        <!-- video_area_start -->
        <div class="video_area video_bg overlay">
            <div class="video_area_inner text-center">
                <span>Montana Sea View</span>
                <h3>Relax and Enjoy your <br>
                    Vacation </h3>
                <a href="https://www.youtube.com/watch?v=U1aZepIIwew" class="video_btn popup-video">
                    <i class="fa fa-play"></i>
                </a>
            </div>
        </div>
        <!-- video_area_end -->

        <!-- about_area_start -->
        <div class="about_area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-7 col-lg-7">
                        <div class="about_thumb2 d-flex">
                            <div class="img_1">
                                <img src="img/about/1.png" alt="">
                            </div>
                            <div class="img_2">
                                <img src="img/about/2.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-5">
                        <div class="about_info">
                            <div class="section_title mb-20px">
                                <span>Delicious Food</span>
                                <h3>We Serve Fresh and <br>
                                    Delicious Food</h3>
                            </div>
                            <p>Enjoy a rich variety of dishes and aromatic Italian coffee, 
                                selection of juices, aromatic teas and delicious desserts.
                                Stay healthy with our healthy corner serving fresh vegetables, fruits and yoghurts.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- about_area_end -->

        <!-- features_room_startt -->
        <div class="features_room">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="section_title text-center mb-100">
                            <span>Featured Rooms</span>
                            <h3>Choose a Better Room</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="rooms_here">
                <div class="single_rooms">
                    <div class="room_thumb">
                        <img src="img/rooms/1.png" alt="">
                        <div class="room_heading d-flex justify-content-between align-items-center">
                            <div class="room_heading_inner">
                                <span>From $200/night</span>
                                <h3>Superior Room</h3>
                            </div>
                            <a href="#booknow-form" class="line-button popup-with-form" id="bookNowLink" >book now</a>
                        </div>
                    </div>
                </div>
                <div class="single_rooms">
                    <div class="room_thumb">
                        <img src="img/rooms/2.png" alt="">
                        <div class="room_heading d-flex justify-content-between align-items-center">
                            <div class="room_heading_inner">
                                <span>From $300/night</span>
                                <h3>Deluxe Room</h3>
                            </div>
                            <a href="#booknow-form" class="line-button popup-with-form" id="bookNowLink" >book now</a>
                        </div>
                    </div>
                </div>
                <div class="single_rooms">
                    <div class="room_thumb">
                        <img src="img/rooms/3.png" alt="">
                        <div class="room_heading d-flex justify-content-between align-items-center">
                            <div class="room_heading_inner">
                                <span>From $150/night</span>
                                <h3>Signature Room</h3>
                            </div>
                            <a href="#booknow-form" class="line-button popup-with-form" id="bookNowLink" >book now</a>
                        </div>
                    </div>
                </div>
                <div class="single_rooms">
                    <div class="room_thumb">
                        <img src="img/rooms/4.png" alt="">
                        <div class="room_heading d-flex justify-content-between align-items-center">
                            <div class="room_heading_inner">
                                <span>From $180/night</span>
                                <h3>Couple Room</h3>
                            </div>
                            <a href="#booknow-form" class="line-button popup-with-form" id="bookNowLink" >book now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- features_room_end -->

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

        <!-- form book now end-->
        <form:form id="booknow-form" class="white-popup-block mfp-hide" action="booking" method="post" modelAttribute="hotelFactory" commandName="hotelFactory">
            <div class="popup_box ">
                <div class="popup_inner">
                    <h3>Book a room</h3>
                    <div class="row">
                        <div class="full-name-div">
                            <form:input path="reservation.full_name" placeholder="Full name"/>
                            <label for="reservation.full_name" class="error" id="errorFullnameLabel">${errorFullname}</label>
                        </div> 
                        <div class="col-xl-6">
                            <form:label path="reservation.checkin">Check in date </form:label>
                            <form:input path="reservation.checkin" type="date"/>
                            <label for="reservation.checkin" class="error" id="errorCheckinLabel">${errorCheckin}</label>
                        </div>
                        <div class="col-xl-6">
                            <form:label path="reservation.checkout">Check out date </form:label>
                            <form:input path="reservation.checkout" type="date"/>
                            <label for="reservation.checkout" class="error" id="errorCheckoutLabel">${errorCheckout}</label>
                        </div>
                        <div class="col-xl-6">
                            <form:label path="reservation.adult">Adult: </form:label>
                            <form:select cssClass="form-select wide option selected focus" id="default-select" path="reservation.adult" items="${adultNumberList}" />
                        </div>
                        <div class="col-xl-6">
                            <form:label path="reservation.children">Children: </form:label>
                            <form:select cssClass="form-select wide option selected focus" id="default-select" path="reservation.children" items="${childrenNumberList}" />
                        </div>
                        <div class="col-xl-12" id="divRoom">
                            <form:label path="rooms.name">Room Type: </form:label>
                            <form:select id="roomId" path="rooms.name" cssClass="form-select wide option selected focus"  items="${roomTypes}" onchange="showPrice()" />
                        </div>

                        <div class="col-xl-12">
                            <label id="priceLabel">Price: $200</label>
                        </div>
                        <div class="col-xl-12">
                            <button type="submit" class="boxed-btn3">Send</button>
                        </div>
                    </div>
                    <div>
                        <label class="valid-form" id="successBookingLabel">${successBooking}</label>
                        <label class="error" id="unavailableRoomLabel">${unavailableRoom}</label>
                    </div>
                </div>
            </div>
        </form:form>
        <!-- form book now end -->

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

        <script src="js/main.js"></script>

        <script>
                                    function showPrice() {
                                        var selectedValue = $("#roomId").val();
                                        if (selectedValue === "superior") {
                                            document.getElementById("priceLabel").innerHTML = ("Price: $200");
                                        } else if (selectedValue === "deluxe") {
                                            document.getElementById("priceLabel").innerHTML = ("Price: $300");
                                        } else if (selectedValue === "signature") {
                                            document.getElementById("priceLabel").innerHTML = ("Price: $150");
                                        } else if (selectedValue === "couple") {
                                            document.getElementById("priceLabel").innerHTML = ("Price: $180");
                                        }

                                    }

                                    function clickBookNowForm() {
                                        window.onload = function () {
                                            if (document.getElementById('bookNowLink') !== null || document.getElementById('bookNowLink') !== "") {
                                                document.getElementById('bookNowLink').click();
                                            }
                                        };
                                    }

                                    //just showing form again when there is error booknow-form
                                    if (document.getElementById('errorFullnameLabel').innerHTML === "Full name needed!" ||
                                            document.getElementById('errorFullnameLabel').innerHTML === "That name is unavailable") {
                                        clickBookNowForm();
                                    } else if (document.getElementById('errorCheckinLabel').innerHTML === "Check in date needed!") {
                                        clickBookNowForm();
                                    } else if (document.getElementById('errorCheckoutLabel').innerHTML === "Check out date needed!") {
                                        clickBookNowForm();
                                    } else if (document.getElementById('unavailableRoomLabel').innerHTML === "Sorry, but that room is currently unavailable.") {
                                        clickBookNowForm();
                                    } else if (document.getElementById('successBookingLabel').innerHTML === "Room booked successfully.") {
                                        clickBookNowForm();
                                    }

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
