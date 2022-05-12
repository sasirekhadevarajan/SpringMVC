
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Suvai - Tastes from India</title>
<link  href="<c:url value='/resources/csspro/form-style.css' />" rel="stylesheet" >
 <style>
  .error 
  {
    color: #ff0000;
    font-size:small;
  }
  </style>
</head>
<body style="background-image:url(<c:url value='/resources/images/banner1.jpg'/>)">
<div style="margin-left: 42%;padding-top: 50px;"><img src="<c:url value='/resources/images/logo.png'/>"></div>

     <form:form action="saveCategory" method="post" modelAttribute="category">

 <div class="divform" style="margin-top:10%">
 	  <form:errors path="*" cssClass="errorblock" element="div" />
      <!-- need to associate this data with category id -->
      <form:hidden path="id" />
       <div></div>
       <label for="name" >Name <span style="color:red">*</span></label>
       <form:input path="name" type="text" id="name" name="name" placeholder="Category name.." /> <br>
       <label for="description" >Description</label>
       <form:input path="description"  type="text" id="description" name="description" placeholder="Category description.." /> <br>
       
       <form:checkbox path="isAvailable" id="availability" name="availability" checked="checked" />
       <label for="availability">Available</label><br><br><br>
    
       <!-- Button -->
       <div style="margin-left:15%">
        	<input type="submit" value="Save Category" />
        	<a href="<c:url value='/admin/categoryList'/>"><input type="button" value="Cancel" /></a>
       </div>
       </div>
     </form:form>
      <div style="clear: both;"></div>
		
		<div class="linkback">
		<p>
			<a href="<c:url value='/admin/categoryList'/>">Back to Category List</a>
		</p>
	</div>

    
</body>
</html>