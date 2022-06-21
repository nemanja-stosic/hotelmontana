
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bill</title>

        <!-- CSS here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/utill.css">
        <link rel="stylesheet" href="css/admin-page-style.css">
    </head>
    <body>
        <!-- form bill end-->
        <form:form class="white-popup-block update-bill-form" action="billGuest" method="post" modelAttribute="guestArchieve">
            <div class="popup_box ">
                <div class="popup_inner">
                    <div id="backLinkDiv">
                        <a href="admin_page" class="line-button" id="backButton">Back</a>
                    </div>
                    <h3>Billing preview</h3>
                    <div class="row">
                        <div class="full-name-div" id="nameDiv">
                            <h4>${guest.full_name}'s Bill</h4>
                            <!-- passing id of selected guest so that we can get selected guest data for update -->
                            <input type="hidden" name="hiddenId" value="${guest.id}"/>
                        </div> 
                        <div class="col-xl-6">
                            <label>Checked in: ${guest.checkin}</label>
                        </div>
                        <div class="col-xl-6">
                            <label>Checking out: ${guest.checkout}</label>
                        </div>
                        <div class="col-xl-6">
                            <label>Room: ${guest.rooms.name}</label>
                        </div>
                        <div class="col-xl-6">
                            <!-- for space -->
                        </div>
                        <!-- payment informatin is only to simulate payment, nothing more. -->
                        <div class="col-xl-12 center-div-el">
                            <h4>Payment information</h4>
                        </div>
                        <div class="col-xl-6">
                            <form:label path="cardname">Name on Card</form:label>
                            <form:input path="cardname" placeholder="John Doe" />
                        </div>
                        <div class="col-xl-6">
                            <form:label path="cardnumber">Credit card number</form:label>
                            <form:input path="cardnumber" placeholder="1111-2222-3333-4444" />
                        </div>
                        <div class="col-xl-6">
                            <form:label path="expdate">Expiration Date (M/D)</form:label>
                            <form:input path="expdate" placeholder="10/22" />
                        </div>
                        <div class="col-xl-6">
                            <form:label path="cvv">CVV (Card Verification Value)</form:label>
                            <form:input path="cvv" placeholder="352" />
                        </div>
                        <div class="col-xl-12">
                            <label class="bill-label">Total: ${totalPrice}$</label>
                        </div>
                        <div class="col-xl-12" id="spaceMeDiv">
                            <!-- for space-->
                        </div>
                        <div class="col-xl-12">
                            <button type="submit" class="boxed-btn3" id="updateButton" >Finish Transaction</button>
                        </div>
                    </div>
                </div>
            </div>
        </form:form>
        <!-- form bill end -->
    </body>                
</html>