
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
<body style="background-image:url(<c:url value='/resources/images/banner1.jpg'/>)">
<div style="margin-left: 42%;padding-top: 50px;"><img src="<c:url value='/resources/images/logo.png'/>"></div>

     <form:form action="saveItem" method="post" modelAttribute="item">
       <div class="divform" style="margin-top:10%">
       <form:errors path="*" cssClass="errorblock" element="div" />
	  <!-- need to associate this data with item id -->
      <form:hidden path="id" />
      <form:hidden path="categoryId" value="${categoryId}"/>
	    <label for="name">Name <span style="color:red">*</span></label><br>
	    <form:input path="name" type="text" id="name" name="name" placeholder="Item name.."/> <br>
		<label for="description">Description</label><br>
	    <form:input path="description" type="text" id="description" name="description" placeholder="Item description.."/><br>
	
	    <label for="price">Price <span style="color:red">*</span></label><br>
	    <form:input path="price" type="text" id="price" name="price" placeholder="Item price.."/><br><br>
	
	    <form:checkbox path="availability" id="availability" name="availability" value="Available" checked="checked"/>
	    <label for="availability">Available</label><br>
	    
	    <!-- construct an "itemlist" link with category id -->
       <c:url var="itemListLink" value="../admin/categoryItemList">
        <c:param name="categoryId" value='<%=request.getParameter("categoryId")%>' />
       </c:url>
	       
	    <div style="margin-left:15%">
	        <input type="submit" value="Save Item">
	        <a href="<c:url value='/admin/categoryItemList?categoryId=${param.categoryId}'/>"><input type="button"  value="Cancel"></a>
	    </div>
	    </div>
	  </form:form>
	
	  
     
     <div style="clear: both;"></div>
	 <div class="linkback">
		<p>
			<a href="<c:url value='${itemListLink}'/>">Back to Items List</a>
		</p>
	</div>
</body>
</html>