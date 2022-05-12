<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Suvai - Tastes from India</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link  href="<c:url value='/resources/csspro/list-style.css' />" rel="stylesheet" > 
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


</head>
<body style="background-image:url(<c:url value='/resources/images/banner1.jpg'/>)">
<div style="height:200px;margin-left: 37%;padding: 80px;"><img src="<c:url value='/resources/images/logo.png'/>"></div>
<div class="row">
	<div class="col-sm-6">
		<h5>Welcome, Admin! | <a href="../userlogout">Logout</a></h5> 
	</div>
</div>
<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
					    <c:set var="categoryName" value="${categoryname}"/>
						<h2>Food Items - <%=pageContext.getAttribute("categoryName")%></h2>
					</div>
					<div class="col-sm-6">
						<a href="../admin/showItemForm?categoryId=${categoryId}" class="btn btn-success"><i class="material-icons">&#xE147;</i> <span>Add New Item</span></a>
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
						<th>Availability</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!-- loop over and print our items -->
				      <c:forEach var="tempItem" items="${items}">
				
				       <!-- construct an "update" link with item id -->
				       <c:url var="updateLink" value="/admin/updateItem">
				        <c:param name="categoryId" value="${tempItem.categoryId}" />
				        <c:param name="itemId" value="${tempItem.id}" />
				       </c:url>
				
				       <!-- construct an "delete" link with item id -->
				       <c:url var="deleteLink" value="/admin/deleteItem">
				       <c:param name="categoryId" value="${tempItem.categoryId}" />
				        <c:param name="itemId" value="${tempItem.id}" />
				       </c:url>
				       <tr>
				        <td>${tempItem.name}</td>
				        <td>${tempItem.description}</td>
				        <td>$${tempItem.price}</td>
				        <c:set var = "available" scope = "request" value = "${tempItem.availability}"/>
				        
				        <% if (request.getAttribute("available").equals(true)) {%>
				        <td>Yes</td>
				        <% } else { %>
				        <td>No</td>
				        <% } %>
						<td>
							<a href="${updateLink}" class="edit" ><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
							<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this item?'))) return false"
							class="delete" ><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
						
					</tr> 
					</c:forEach>
				</tbody>
			</table>
			<!-- <div class="clearfix">
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div> -->
		</div>
		<div class="linkback">
		<p>
			<a href="<c:url value='/admin/categoryList'/>">Back to Category List</a>
		</p>
	</div>
		
	</div>        
</div>

</body>
</html>