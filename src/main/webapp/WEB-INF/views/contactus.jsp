<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Suvai - Tastes from India</title>
  
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/restaurant-style-contact.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="js/restaurant.js"></script>
    <style>
      table{
        border: 1px solid #2c8820;
        width: 100%;
      }

      th {
        text-align: center;
        background-color: #2c8820;
        height:10px;
      }
      tr,td{
      height:20px;
      }
      </style>
</head>
<body>
    
    <div class="wrapper">
       <jsp:include page="loginmenu.jsp"/>
        <div class="box b">
            <nav class="menu"> 
               <a href="${pageContext.request.contextPath}/"> &nbsp; &nbsp; &nbsp; Home  &nbsp; &nbsp; &nbsp;</a> 
               <a href="${pageContext.request.contextPath}/aboutus">&nbsp; &nbsp; &nbsp;About Us &nbsp; &nbsp; &nbsp; </a>              
               <a href="${pageContext.request.contextPath}/gallery">&nbsp; &nbsp; &nbsp;Gallery &nbsp; &nbsp; &nbsp;</a>
               <a href="category/order-list">&nbsp; &nbsp; &nbsp;Order Online&nbsp; &nbsp; &nbsp;</a>
               <a href="#">&nbsp; &nbsp; &nbsp;Contact Us&nbsp; &nbsp; &nbsp;</a>
            </nav> 
        </div>
            <div class="box c">
              <div class="addressbox">
                <div class="col-md-9 col-sm-4">
                    <h4>Suvai Indian Restaurant</h4>
                    <hr> 
                    <p><strong>Phone :</strong>(469) 394-6883</p>
                    <p><strong>Email :</strong> <a href="mailto:info@suvaiindianrestaurant.com">info@suvaiindianrestaurant.com</a></p>
                    <p><strong>Web : </strong><a href="#">www.suvaiindianrestaurant.com</a></p>
                    <p><strong>Address :</strong> 659 Cowboys Parkway</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Irving, TX, US-75019</p>
                     
                  </div>
            </div>
            <div class="hoursbox">
                <div class="col-md-9 col-sm-4">
                    <h4>Store Hours</h4>
                    <hr> 
                    <table style="height:100px;">
                      <tr>
                        <th>Day</th>
                        <th>Hours</th>
                      </tr>
                      <tr height="20">
                        <td>Monday</td>
                        <td>12:00 PM - 9:00 PM</td>
                      </tr>
                      <tr height="20">
                        <td>Tuesday</td>
                        <td>12:00 PM - 9:00 PM</td>
                      </tr>
                      <tr height="20">
                        <td>Wednesday</td>
                        <td>12:00 PM - 9:00 PM</td>
                      </tr>
                      <tr height="20">
                        <td>Thursday</td>
                        <td>12:00 PM - 9:00 PM</td>
                      </tr>
                      <tr height="20">
                        <td>Friday</td>
                        <td>12:00 PM - 10:00 PM</td>
                      </tr>
                      <tr>
                        <td height="20">Saturday</td>
                        <td>12:00 PM - 10:00 PM</td>
                      </tr>
                      <tr>
                        <td height="20">Sunday</td>
                        <td>12:00 PM - 9:00 PM</td>
                      </tr>
                    </table>
                      
                  </div>
            </div>
        
        
        <div class="contactbox">
            <h1>Contact Us</h1>
            <form>
                <p>Name</p>
                <input type="text" placeholder="Enter your name"/>
                <p>Email</p>
                <input type="text" name="email" placeholder="Enter your email"/>
                <p>Phone</p>
                <input type="text" placeholder="Enter your phone number"/>
                <p>Message</p>
                <textarea rows = "5"  placeholder="Enter message"></textarea><br>
                <input type="submit" name="submit" value = "Send"><br>
                
            </form>
        </div>
    </div>
           
    </div>
    <div style="margin-top:40%">
    <jsp:include page="footer.jsp" />
    </div>
</body>
</html>