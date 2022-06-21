<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guest Archive</title>

        <link rel="stylesheet" href="css/utill.css">
        <link rel="stylesheet" href="css/admin-page-style.css">
    </head>
    <body>
        <table class="main">
            <!-- header start -->
            <header>
                <div>
                    <a role="link" aria-disabled="true">
                        <img src="img/logo.png" alt="">
                    </a>
                </div>

            </header>
            <!-- header end -->
            <tr>
                <td height="350px">
                    <!-- Page content table -->
                    <table class="content">
                        <td width = "100px">
                            <!--Left Side Menu  -->
                            <a href="admin_page" class = "leftmenu">Guests List</a> 
                            <a href="guest_archive" class = "leftmenu">Guests Archive</a> 
                            <a href="home" class ="loginOut">Logout</a>
                        </td>
                        <td style="vertical-align: baseline;" align="center">
                            <br>
                            <table class="guestList">
                                <tr>
                                <div class="description">Montana Guests Archive</div><br>
                                </tr>
                                <tr>
                                    <th class = "list">Name</th>
                                    <th class = "list">Checkout</th>
                                    <th class = "list">Bill ($)</th>
                                    <th class = "list">Card Name</th>
                                    <th class = "list">Card Number</th>
                                    <th class = "list">Expiration Date</th>
                                    <th class = "list">CVV</th>
                                </tr>

                                <!-- loop over and print out customers  -->
                                <c:forEach var="tempGuest" items="${guestArchiveTableData}">

                                    <tr class="list">
                                        <td class =  "list">${tempGuest.full_name}</td>
                                        <td class =  "list">${tempGuest.checkout}</td>
                                        <td class =  "list">${tempGuest.bill}</td>
                                        <td class =  "list">${tempGuest.cardname}</td>
                                        <td class =  "list">${tempGuest.cardnumber}</td>
                                        <td class =  "list">${tempGuest.expdate}</td>
                                        <td class =  "list">${tempGuest.cvv}</td>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </td>
                    </table>
                </td>
            </tr>
        </table>
    </body>
</html>
