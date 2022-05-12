<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<title>Login Form Design</title>

<link  href="<c:url value='/resources/csspro/admin-login.css' />" rel="stylesheet" > 
<style>
body{
	background-image:url("/resources/images/spices.jpg");
	background-size:cover;
}
</style>
    
<body style="background-image:url(<c:url value='/resources/images/spices.jpg'/>)">
    <div class="loginbox">
    <img class = "avatar" src="<c:url value='/resources/images/lock.png' />">
        <h1>Login Here  </h1>
        <form>
            <p>Email</p>
            <input type="text" name="email" placeholder="Enter your email">
            <p>Password</p>
            <input type="password" name="pass" placeholder="Enter password">
            <input type="submit" onclick="window.location.href='${pageContext.request.contextPath}/admin/categoryList'; return false;" name="submit" value = "Login"><br> <!-- onclick="window.location.href='${pageContext.request.contextPath}/admin/categoryList'; return false;" -->
            <a href="#">Forgot your password?</a><br>
        </form>
    </div>
</body>
</html>