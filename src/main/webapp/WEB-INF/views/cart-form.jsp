<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Suvai - Tastes from India</title>
<link  href="<c:url value='/resources/csspro/list-style.css' />" rel="stylesheet" > 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<head>
    <link  href="<c:url value='/resources/csspro/form-style.css' />" rel="stylesheet" > 
    <script>
    window.onunload = refreshParent;
    function refreshParent() {
        window.opener.location.reload();
    }
	</script>
</head>
<body>
	<br>
	<h4 style="margin-left:5%">Shopping Cart</h4>
	
	
	<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper" style="min-width: 400px;">
		<pre><h6>Pick up at: Suvai Restaurant
	    659 Cowboys Parkway 
	    Irving, TX, US-75019</pre>
	    </h6>
		    <table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Name</th>
						<th>Quantity</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<!-- loop over and print our items -->
				      <c:forEach var="tempItem" items="${cartitems}">
						      
				       <!-- construct an "remove" link with item id -->
				       <c:url var="removeLink" value="/cart/removeCartItem">
				        <c:param name="itemId" value="${tempItem.itemId}" />
				       </c:url>
				       <tr>
				        <td>${tempItem.itemName}</td>
				        <td>${tempItem.quantity}</td>
				        <td>$${tempItem.price}</td>
					</tr> 
					<tr>
						<td>
						<a href="${removeLink}" class="delete" >Remove</a>
						</td><td></td><td></td>
					</tr>
					</c:forEach>
					<tr>
					<td>Total</td>
					<td></td>
					<td>$${total}</td>
					</tr>
				</tbody>
			</table> 
			
			
   		</div>
   	</div>
   	</div>
    <div class="container">
        <div class="row float-right">
            <div class="col-sm-3"></div>
	        <div class="col-sm-3">
	    	<a href ="${pageContext.request.contextPath}/saveOrder" class="btn btn-success" >Place Order</a> <b>  Or  </b>
	    	<a href ="" onclick="self.close();" class="btn btn-success">Continue Shopping</a>
	    	</div> 
	    </div>
	 </div> 
</body>
</html>