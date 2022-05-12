
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
	
	<script>
		function verifyPwdConPwdMatch(){
			var pwd = document.getElementById("password").value;
			var confirmPwd = document.getElementById("confirmpwd").value;
			
			if (pwd==confirmPwd){
				return true;
			}
			alert("Confirm password do not match.")
			return false;
		}
	</script>

</head>
<body>
	 <h2 style="text-align:center">Update Profile</h2>
	 <label style="color:red;margin-left:20px;"><%=request.getAttribute("duplicateemail")==null?"":request.getAttribute("duplicateemail") %></label>
     <form:form action="updateUser" method="post" modelAttribute="user">
       <form:errors path="*" cssClass="errorblock" element="div" />
		
       <div class="divformsignup" style="margin-top:10%">
	  	
	  	<!-- need to associate this data with user id -->
      	<form:hidden path="id" />
	    
	    <label for="firstname">First Name <span style="color:red">*</span></label><br>
	    <form:input path="firstName" type="text" id="firstname" name="firstname" placeholder="Enter your first name.."/> <br>
		
	    <label for="lastName">Last Name</label><br>
	    <form:input path="lastName" type="text" id="lastname" name="lastname" placeholder="Enter your last name.."/><br>
		 
	    <label for="phone">Phone</label><br>
	    <form:input path="phone" type="text" id="phone" name="phone" placeholder="Enter your phone number.."/><br><br>
		  
	    
	    <form:hidden path="email" />
	    
	    <form:hidden path="password" />
	    
		<label for="addressline1">Address Line 1</label><br>
	    <form:input path="addressLine1" type="text" id="addressline1" name="addressline1" placeholder="Enter your address line 1.."/><br><br>
	
    
	    <label for="addressline2">Address Line 2</label><br>
	    <form:input path="addressLine2" type="text" id="addressline2" name="addressline2" placeholder="Enter your address line 2.."/><br><br>
		
	
	   	<label for="city">City</label><br>
	    <form:input path="city" type="text" id="city" name="city" placeholder="Enter your city.."/><br><br>
		
 
	    <label for="state">State</label><br>
	    <form:input path="state" type="text" id="state" name="state" value="Texas" disabled="true"/><br><br>
		
		<label for="state">Country</label><br>
	    <input type="text" id="country" name="country" value="USA" disabled/><br><br>
		
		<label for="zipcode">Zipcode</label><br>
	    <form:input path="zipcode" type="text" id="zipcode" name="zipcode" placeholder="Enter your zipcode.."/><br><br>
		  
	    
		
	    <div style="margin-left:15%">
	        <input type="submit" value="Submit">
	        <input type="button" onclick="self.close()" value="Cancel">
	    </div>
	    </div>
	  </form:form>
     <div style="clear: both;"></div>
</body>
</html>