
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Guest</title>

        <!-- CSS here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/utill.css">
        <link rel="stylesheet" href="css/admin-page-style.css">
    </head>
    <body>
        <!-- form update end-->
        <form:form class="white-popup-block update-bill-form " action="updateGuest" method="post" modelAttribute="hotelFactory" commandName="hotelFactory">
            <div class="popup_box ">
                <div class="popup_inner">
                    <h3>Update Guest Data</h3>
                    <div class="row">
                        <div class="full-name-div" id="nameDiv">
                            <h4>Guest Name: ${guest.full_name}</h4>
                            <!-- passing id of selected guest so that we can get selected guest data for update -->
                            <input type="hidden" name="hiddenId" value="${guest.id}"/>
                        </div> 
                        <div class="col-xl-6">
                            <form:label path="reservation.checkout">Check out date </form:label>
                            <form:input path="reservation.checkout" type="date"/>
                        </div>
                        <div class="col-xl-6">
                            <!-- for space-->
                        </div>
                        <div class="col-xl-6">
                            <form:label path="reservation.adult">Adult: </form:label>
                            <form:select cssClass="form-select wide option selected focus" id="default-select" path="reservation.adult" items="${numberList}" />
                        </div>
                        <div class="col-xl-6">
                            <form:label path="reservation.children">Children: </form:label>
                            <form:select cssClass="form-select wide option selected focus" id="default-select" path="reservation.children" items="${numberList}" />
                        </div>
                        <div class="col-xl-12" id="divRoom">
                            <form:label path="rooms.name">Room Type: </form:label>
                            <form:select id="roomId" path="rooms.name" cssClass="form-select wide option selected focus"  items="${roomTypes}" />
                        </div>
                        <div class="col-xl-12" id="spaceMeDiv">
                            <!-- for space-->
                        </div>
                        <div class="col-xl-12">
                            <button type="submit" class="boxed-btn3" id="updateButton" >Update</button>
                        </div>
                    </div>
                </div>
            </div>
        </form:form>
        <!-- form update end -->
    </body>
</html>
