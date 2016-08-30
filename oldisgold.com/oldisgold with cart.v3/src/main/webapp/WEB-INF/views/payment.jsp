<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
</head>
<style href="resources/css/payment.css" rel="css"/>
<script src="resources/js/payment.js"/>
<body>

  <div class="body-text">Try to write your name in the name fields. Also try to write your card number. This plugin identifies your card and shows the right graphics. By clicking CCV field card will turn.</div>
  <form action="thanks">
    <div class="form-container">
      <div class="personal-information">
        <h1>Payment Information</h1>
      </div> <!-- end of personal-information -->
      <input id="input-field" type="text" name="streetaddress" required="required" autocomplete="on" maxlength="45" placeholder="Streed Address"/>

      <input id="column-left" type="text" name="city" required="required" autocomplete="on" maxlength="20" placeholder="City"/>

      <input id="column-right" type="text" name="zipcode" required="required" autocomplete="on" pattern="[0-9]*" maxlength="5" placeholder="ZIP code"/>
      
      <input id="input-field" type="email" name="email" required="required" autocomplete="on" maxlength="40" placeholder="Email"/>
    
    <div class="card-wrapper"></div>
      <input id="column-left" type="text" name="first-name" placeholder="First Name"/>
      
      <input id="column-right" type="text" name="last-name" placeholder="Surname"/>
      
      <input id="input-field" type="text" name="number" placeholder="Card Number"/>
     
      <input id="column-left" type="text" name="expiry" placeholder="MM / YY"/>
        
      <input id="column-right" type="text" name="cvc" placeholder="CCV"/>
    
      <input id="input-button" type="submit" value="Submit"/>
    </form>
  </div> <!-- end of form-container -->
</body>

</html>