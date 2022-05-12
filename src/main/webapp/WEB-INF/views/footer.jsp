<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="<c:url value='/resources/csspro/style.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/bootstrap.min.css'/> ">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/restaurant-style-contact.css' />">
    <link rel="stylesheet"  href="<c:url value='/resources/csspro/restaurant-style-login.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/restaurant-style-menu.css' />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="<c:url value='/resources/js/restaurant.js'/>"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
</head>
<body>
	<div style="background-color: rgb(110, 110, 110);color: white;margin-top:10%;">
        <footer  class="padding-top bg_black">
            <div class="container">
                <div class="row">
                <br>
                
                <br>
                </div>
              <div class="row">
                <div class="col-md-4 col-sm-8 footer_column">

                  <h5>About Us</h5>
                  <hr>
                  <p class="half_space">We aim to convey our passion for South Indian cuisine, through a quest for perfect ingredients and technique, plus a deep-seated desire to continue learning how to evolve and blend old traditions and modern tastes.</p>
                </div>
               
                <div class="col-md-4 col-sm-7 footer_column">
                  <h5>Newsletter</h5>
                  <hr>
                  <p class="icon"><i class="icon-dollar"></i>Sign up with your name and email to get updates fresh updates.</p>
                  <div id="result1" class="text-center"></div>        
                  
                 <form action="" method="get" class="newsletter">
                    <div class="form-group">
                      <input type="text" name="email" placeholder="Enter your email"/>
                    </div>
                    <div class="form-group">
                      <input type="submit" class="btn-submit button3" value="&nbsp;&nbsp;&nbsp;&nbsp;Subscribe&nbsp;&nbsp;&nbsp;&nbsp;" />
                    </div>
                  </form>
                </div>
                <div class="col-md-4 col-sm-8 footer_column">
                  <h5>Get in Touch</h5>
                  <hr>
                  <p class="address"><i class="icon-location"></i>659 Cowboys Parkway Irving, TX, US-75019</p>
                  <p class="address"><i class="fa fa-phone"></i>(469) 394-6883</p>
                  <p class="address"><i class="icon-dollar"></i><a href="mailto:info@suvaiindianrestaurant.com">info@suvaiindianrestaurant.com</a></p>
                </div> 
              </div>
              <div class="row">
               <div class="col-md-12">
                  <div class="copyright clearfix">
                    <p>© 2022 Suvai-Indian Restaurant. ALL RIGHTS RESERVED.</p>
                  </div>
                </div>
              </div>
            </div>
          </footer>
        </div>
</body>
</html>