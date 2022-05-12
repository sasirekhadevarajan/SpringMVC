
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
    <style>

      table{
        border: 0px solid #2c8820;
        margin-top: 0%;
        margin-left:10%;
        border-collapse: collapse;
      }
      table{
        width: 50%;
      }
      th {
        text-align: left;
        border: 0px solid #2c8820;
      }
      td{
        border: 0px solid #2c8820;
        height:70px;
      }
      .column-width{
        width: 30%;
        padding:20px;
      }
      h4{
        margin-top: 3%;
        margin-left:25%;
      }
      </style>
</head>
<body>
      
    <div class="wrapper">
     <jsp:include page="loginmenu.jsp" />
        <div class="box b">
            <nav class="menu"> 
               <a href="${pageContext.request.contextPath}/"> &nbsp; &nbsp; &nbsp; Home  &nbsp; &nbsp; &nbsp;</a> 
               <a href="${pageContext.request.contextPath}/aboutus">&nbsp; &nbsp; &nbsp;About Us &nbsp; &nbsp; &nbsp; </a>              
               <a href="#">&nbsp; &nbsp; &nbsp;Gallery &nbsp; &nbsp; &nbsp;</a>
               <a href="category/order-list">&nbsp; &nbsp; &nbsp;Order Online&nbsp; &nbsp; &nbsp;</a>
               <a href="${pageContext.request.contextPath}/contactus">&nbsp; &nbsp; &nbsp;Contact Us&nbsp; &nbsp; &nbsp;</a>
            
            </nav> 
        </div>
        
            <div style="padding:50px;" class="box c">
                <div style="text-align: center;"><h2>Our Gallery</h2>
                <h6>Popular food items in Suvai - Tastes from India</h6></div>
                <table>
                    <tr>
                    <td class="column-width"><img src="<c:url value='/resources/images/Naan.jpg'/>"></img> Naan</td>                    
                    <td class="column-width"><img src="<c:url value='/resources/images/butternaan.jpg'/>"></img> Butter Naan</td>
                    <td class="column-width"><img src="<c:url value='/resources/images/onionkulcha.jpg'/>"></img> Onion Kulcha</td>
                    <td class="column-width"><img src="<c:url value='/resources/images/chicken65.jpg'/>"></img> Chicken 65</td>
                    </tr>
                    <tr> 
               
                        <td class="column-width"><img src="<c:url value='/resources/images/dosa.jpg'/>" ></img> Dosa</td>
                        <td class="column-width"><img src="<c:url value='/resources/images/masaladosa.png'/>" ></img> Masala Dosa</td>
                        <td class="column-width"><img src="<c:url value='/resources/images/idli.png'/>" ></img> Idli</td>
                        <td class="column-width"><img src="<c:url value='/resources/images/carrothalwa.jpg'/>" ></img> Carrot Halwa</td>
                    </tr>
                    <tr>
                        <td class="column-width"><img src="<c:url value='/resources/images/palakpaneer.png'/>"></img> Palak Paneer</td>                    
                        <td class="column-width"><img src="<c:url value='/resources/images/chickenbiriyani.png'/>" ></img> Chicken Biriyani</td>
                        <td class="column-width"><img src="<c:url value='/resources/images/vegbiriyani.png'/>"></img> Vegetable Biriyani</td>
                        <td class="column-width"><img src="<c:url value='/resources/images/chickenmanchurian.jpg'/>"></img>  Chicken Manchurian</td> 
                        
                    </tr>
                </table>

        </div>
       
        <jsp:include page="footer.jsp" />
        
            
    </body>
    </html>