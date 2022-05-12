
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Suvai - Tastes from India</title>
<head>
    <link  href="<c:url value='/resources/csspro/form-style.css' />" rel="stylesheet" > 

</head>
<body>
     <form:form action="saveItem" method="post" modelAttribute="item">
       <div class="divform">
	       <form:hidden path="id" />
	        <label for="name">Name</label><br>
		    <form:input path="name" type="text" id="name" name="name" placeholder="Item name.."/> <br>
			<form:errors path="name" cssClass="error"/>
		    <label for="qty">Qty</label><br>
		    <form:input path="description" type="text" id="description" name="description" placeholder="Item description.."/><br>
		    <label for="price">Price</label><br>
		    <form:input path="price" type="text" id="price" name="price" placeholder="Item price.."/><br><br>
		    <div style="margin-left:15%">
		        <input type="submit" value="Add to Cart">
		        <input type="button" value="Cancel">
		    </div>
	    </div>
	  </form:form>
</body>
</html>