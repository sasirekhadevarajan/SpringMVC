<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
	<title>Suvai - Tastes from India</title>
	<link rel = "icon" type="image/png" href = "<c:url value='/resources/images/dish.png'/>">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/style.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/bootstrap.min.css'/> ">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/restaurant-style-contact.css' />">
    <link rel="stylesheet"  href="<c:url value='/resources/csspro/restaurant-style-login.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/restaurant-style-menu.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/csspro/restaurant-style-order.css' />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="<c:url value='/resources/js/restaurant.js'/>"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script>
	  function validateEmail(inputText) {
	    var emailformat =  new RegExp('[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-z]{2,3}');
	    if(emailformat.test(inputText)) {
		    document.getElementById('erroremail').innerHTML = '';
		    document.loginForm.email.focus();
		    return true;
	    } else
	    {
	    	document.getElementById('erroremail').innerHTML = 'Invalid email address';
		    document.getElementById('email').focus();
		    return false;
	    }
	  }
	 
	  function createPopupWin(pageURL, pageTitle,
              popupWinWidth, popupWinHeight) {
      var left = (screen.width ) ;
      var top = (screen.height ) ;
      var myWindow = window.open(pageURL, pageTitle,
              'resizable=yes, width=' + popupWinWidth
              + ', height=' + popupWinHeight + ', top='
              + top + ', left=' + left);
  	  }
	  function createPopupSignUp(pageURL, pageTitle,
              popupWinWidth, popupWinHeight) {
      var left = (screen.width)/2-popupWinWidth/2;
      var top = (screen.height ) ;
      var myWindow = window.open(pageURL, pageTitle,
              'resizable=yes, width=' + popupWinWidth
              + ', height=' + popupWinHeight + ', top='
              + top + ', left=' + left);
  	  }
  </script>
<body>
		<div class="form-popup" id="loginForm">
	      <form:form method="post" modelAttribute="userlogin" class="form-container" action="${pageContext.request.contextPath}/validateLogin" onsubmit="return validateEmail(document.getElementById('email').value)">  
	        
	        <label style="color:red;"><%=request.getAttribute("error")==null?"":request.getAttribute("error") %></label>
	       
	        <h1>Login</h1>
	        <label for="email"><b>Email</b></label>
	        <form:hidden path="page" value="${page}"/>
	        <form:input path="email" type="text" placeholder="Enter Email" id="email" />
	        <div class = "errLabel" id="erroremail"></div>
	        <label for="psw"><b>Password</b></label>
	        <form:input path="password" type="password" placeholder="Enter Password" id="psw" />
	        <label id="errorpass"></label>
	        <button type="submit" class="btn" >Login</button>
	        <button type="button" class="btn cancel" onclick="closeForm()">Cancel</button>
	      </form:form>
	    </div>
	
	<div class="box a">
        <div class="box a">
        
           <nav class="login"> 
          
             <%  
             	if (session.getAttribute("username") != "") { %>
             	
					<div class="dropdowndiv"><i id="icon" class="fa fa-unlock"></i><a class="dropbtn"> Welcome, ${sessionScope.username}<i class="fa fa-caret-down"></i></a> 
		              <div class="dropdown-content">
                        <a href="#"  onclick="createPopupSignUp('${pageContext.request.contextPath}/showUser?userId=${sessionScope.userid}','Sign Up', 620, 650);">Manage Profile</a>
                        <a href="${pageContext.request.contextPath}/userlogout">Logout</a>
                      </div>
		            </div>|
		            <a href="#" onclick="createPopupSignUp('${pageContext.request.contextPath}/usersignup','Sign Up', 620, 650);">&nbsp; &nbsp; &nbsp;New User ? Register &nbsp; &nbsp; </a> 
	           <% } else { %>
	            <% if (request.getAttribute("result")=="fail") { %>
	          	 	<i id="icon" class="fa fa-lock"></i><a id="loginlink" href="javascript:openForm()"> &nbsp; &nbsp; &nbsp;Login  &nbsp; &nbsp;</a> 
		            |
		            <a href="#" onclick="createPopupSignUp('${pageContext.request.contextPath}/usersignup','Sign Up', 620, 650);">&nbsp; &nbsp; &nbsp;New User ? Register &nbsp; &nbsp; </a> 
					<script>
						document.getElementById("loginForm").style.display = "block"; 
					</script>
				<%} else if (request.getAttribute("result")=="success") {%>
					<i id="icon" class="fa fa-lock"></i>
					<div class="dropdowndiv"><a class="dropbtn"> Welcome, ${sessionScope.username}<i class="fa fa-caret-down"></i></a> 
		            	<div class="dropdown-content">
                        <a href="#" onclick="createPopupSignUp('${pageContext.request.contextPath}/showUser?userId=${sessionScope.userid}','Sign Up', 620, 650);">Manage Profile</a>
                        <a href="${pageContext.request.contextPath}/userlogout">Logout</a>
                      </div>
		            </div>|
		            <a href="#" onclick="createPopupSignUp('${pageContext.request.contextPath}/usersignup','Sign Up', 620, 650);">&nbsp; &nbsp; &nbsp;New User ? Register &nbsp; &nbsp; </a> 
		            <%} else { %>
	                 <i id="icon" class="fa fa-lock"></i><a id="loginlink" href="javascript:openForm()"> &nbsp; &nbsp; &nbsp;Login  &nbsp; &nbsp;</a> 
		            |
		            <a href="#" onclick="createPopupSignUp('${pageContext.request.contextPath}/usersignup','Sign Up', 620, 650);">&nbsp; &nbsp; &nbsp;New User ? Register &nbsp; &nbsp; </a>
		            <%} } %>
            <c:set var="cartitemcount" value="${sessionScope.itemcount}"/>
            <span id="cartcount"><a onclick="createPopupWin('${pageContext.request.contextPath}/cart/showForm','Shopping Cart', 500, 650);" ><i class="fa fa-shopping-cart"></i><span class='badge badge-warning' id='lblCartCount'>${sessionScope.itemcount}</span></a> </span>      
         </nav>
        
       </div>
     </div> 
</body>
</html>