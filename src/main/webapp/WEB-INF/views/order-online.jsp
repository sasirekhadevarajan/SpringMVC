<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link rel = "icon" type="image/png" href = "<c:url value='/resources/images/dish.png'/>">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/restaurant-style-order.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/style.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/bootstrap.min.css'/> ">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/restaurant-style-contact.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/restaurant-style-login.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/restaurant-style-menu.css' />">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="<c:url value='/resources/js/restaurant.js'/>"></script>  
    <style>
    .btn {
	  background-color: black;
	  border: none;
	  color: white;
	  padding: 12px 16px;
	  font-size: 16px;
	  cursor: pointer;
	}

	/* lighter background on mouse-over */
	.btn:hover {
	  color:white;
	  background-color: darkgrey;
	}
	.itemtable table{
	  margin-top: 0%;
	  margin-left:25%;
	  width: 50%;
	  border: 2px solid green;
	}
	
    </style>
    
</head>
<body>
	
    <div class="wrapper">
       <jsp:include page="loginmenu.jsp" />
        <div class="box b">
            <nav class="menu"> 
               <a href="${pageContext.request.contextPath}/"> &nbsp; &nbsp; &nbsp; Home  &nbsp; &nbsp; &nbsp;</a> 
               <a href="${pageContext.request.contextPath}/contactus">&nbsp; &nbsp; &nbsp;About Us &nbsp; &nbsp; &nbsp; </a>              
               <a href="${pageContext.request.contextPath}/gallery">&nbsp; &nbsp; &nbsp;Gallery &nbsp; &nbsp; &nbsp;</a>
               <a href="#">&nbsp; &nbsp; &nbsp;Order Online&nbsp; &nbsp; &nbsp;</a>
               <a href="${pageContext.request.contextPath}/contactus">&nbsp; &nbsp; &nbsp;Contact Us&nbsp; &nbsp; &nbsp;</a>
            </nav> 
        </div>
            <div class="box c">
              <div class="scrollmenu">
              	  <!-- loop over and print categories -->
				  <c:forEach var="tempCategory" items="${categories}">
				  	<c:set var="cidlink" value="${tempCategory.name}"/>
				  	<a href="#<%=pageContext.getAttribute("cidlink")%>">${tempCategory.name}</a>
				 </c:forEach>
				</div>
          <br>
          <div>
          <!-- loop over and print categories -->
          <c:forEach var="tempCategory" items="${categories}">
           	<c:set var="idlink" value="${tempCategory.name}"/>
          	<!-- loop over and print items -->
          		<h4  id="${idlink}">${tempCategory.name}</h4>
         		<div class="itemtable">
          		<c:forEach var="tempItem" items="${tempCategory.items}">
          			<form:form action="/SpringMVC/cart/additem" method="post" modelAttribute="cartitem">
          			<!-- need to associate this data with item id -->
				      <form:hidden path="itemId" value="${tempItem.id}"/>
				      <form:hidden path="itemName" value="${tempItem.name}"/>  
					  <form:hidden path="itemDescription" value="${tempItem.description}"/>
					  <form:hidden path="price" value="${tempItem.price}"/><br><br>
					  <form:hidden path="quantity" value="1"/>
					<table>
          			<tbody>
				       <tr>
				        <td width=500px><b>${tempItem.name}</b><br>
				        <p style="color:green;font-style:italic">${tempItem.description}<p></td>
				        <td width=50px><input type="text" size="2" value="1" disabled/></td>
				        <td width=50px>$${tempItem.price}
				        </td>
				  		<td width=150px>
  						<button class="btn"><i class="fa fa-cart-plus"></i> Add to Cart</button>
  						<!-- <a href="#" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>-->
						</td>
					</tr>
					</tbody>
	          		</table>
	          		</form:form>
	          		
          		</c:forEach>
          		
          	  </div>
          	  <br>
        	</c:forEach>    
        	</div> 
        </div>
        <jsp:include page="footer.jsp" />
          </div>
    </body>
    </html>