<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Suvai - Tastes from India</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="js/restaurant.js"></script>
</head>
<body>
	<div class="wrapper">
    
        <jsp:include page="loginmenu.jsp" />
        
        
        <div class="box b">
          <div class="menu">
            <nav> 
               <a href="${pageContext.request.contextPath}/"> &nbsp; &nbsp; &nbsp; Home  &nbsp; &nbsp; &nbsp;</a> 
               <a href="#">&nbsp; &nbsp; &nbsp;About Us &nbsp; &nbsp; &nbsp; </a>              
               <a href="${pageContext.request.contextPath}/gallery">&nbsp; &nbsp; &nbsp;Gallery &nbsp; &nbsp; &nbsp;</a>
               <a href="category/order-list">&nbsp; &nbsp; &nbsp;Order Online&nbsp; &nbsp; &nbsp;</a>
               <a href="${pageContext.request.contextPath}/contactus">&nbsp; &nbsp; &nbsp;Contact Us&nbsp; &nbsp; &nbsp;</a>
            </nav> 
          </div>
        </div>
        <div style="height:320px;padding:50px;" class="box c"> 
            <div class="container">
			    <div class="row">
			        <div class="col-md-6">
			            <img style="height:400px;width:500px" src="<c:url value='/resources/images/about.jpg'/>"></img>
			        </div>
			         
			        <div class="col-md-6">
			            <br><br>
			            <div>
			                <h2 style="color:orange">Welcome to Suvai</h2>
			            </div>
			            <div>
			                <p>We are known for our authentic South Indian Cuisine and North Indian Cuisine. We have been delivering consistent quality food and have won hearts of many of our customers. From varieties of Biriyanis, Idli, Dosas to South and North Indian dishes, our chefs are experts in creating these traditional yummiest food delicacies. Come and enjoy the food with us to experience the tastes from India.</p>
			            </div>
			        </div>
    		</div>
    	</div>
    	
    </div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>