<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN</title>

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
                            <!--table with guests  -->
                            <br>
                            <table class="guestList">
                                <tr>
                                <div class="description">Montana Guests List</div><br>
                                </tr>
                                <tr>
                                    <th class = "list">Name</th>
                                    <th class = "list">Room</th>
                                    <th class = "list">Adult</th>
                                    <th class = "list">Children</th>
                                    <th class = "list">Checkout date</th>
                                    <th class = "list">Action</th>
                                </tr>

                                <!-- loop over and print out customers  -->
                                <c:forEach var="tempGuest" items="${tableData}">

                                    <!--construct an update link with customer id  -->
                                    <c:url var="updateLink" value="update">
                                        <c:param name="guestId" value="${tempGuest.id}" />
                                    </c:url>

                                    <!--construct a billing link with customer id  -->
                                    <c:url var="billLink" value="/bill">
                                        <c:param name="guestId" value="${tempGuest.id}" />
                                    </c:url>

                                    <tr class="list">
                                        <td class =  "list">${tempGuest.full_name}</td>
                                        <td class =  "list">${tempGuest.rooms.name}</td>
                                        <td class =  "list">${tempGuest.adult}</td>
                                        <td class =  "list">${tempGuest.children}</td>
                                        <td class =  "list">${tempGuest.checkout}</td>
                                        <td class =  "list"><a href="${updateLink}" class="table-links">Update</a> | <a href="${billLink}" class="table-links">Bill</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </td>
                    </table>
                </td>
            </tr>
        </table>

        <div id="successUpdateDiv">
            <label>${successUpdate}</label>
            <label>${successBill}</label>
        </div>
        <div class="canceled-action">
            <label>${noUpdate}</label>
        </div>
        <div class="canceled-action">
            <label class="error" id="unavailableRoomLabel">${unavailableRoom}</label>
            <label class="error">${invalidCheckoutDate}</label>
            <label class="error">${emptyFields}</label>
        </div>
    </body>
</html>
