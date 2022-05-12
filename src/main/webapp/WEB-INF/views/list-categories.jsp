<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Suvai - Tastes from India</title>
		<link rel = "icon" type="image/png" href = "<c:url value='/resources/images/dish.png'/>">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<link  href="<c:url value='/resources/csspro/list-style.css' />" rel="stylesheet" > 
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
		<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
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
							<h2>Food Categories</b></h2>
						</div>
						<div class="col-sm-6">
							<a href="showCategoryForm" class="btn btn-success"><i class="material-icons">&#xE147;</i> <span>Add New Category</span></a>
						</div>
					</div>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							
							<th>Name</th>
							<th>Description</th>
							<th>Availability</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>


					      <!-- loop over and print our items -->
					      <c:forEach var="tempCategory" items="${categories}">
							
								<!-- construct an "update" link with category id -->
						       <c:url var="itemListLink" value="/admin/categoryItemList">
						        <c:param name="categoryId" value="${tempCategory.id}" />
						       </c:url>
								
						       <!-- construct an "update" link with category id -->
						       <c:url var="updateLink" value="/admin/updateCategory">
						        <c:param name="categoryId" value="${tempCategory.id}" />
						       </c:url>
						
						       <!-- construct an "delete" link with category id -->
						       <c:url var="deleteLink" value="/admin/deleteCategory">
						        <c:param name="categoryId" value="${tempCategory.id}" />
						       </c:url>
						       <tr>
						        <td><a href="${itemListLink}">${tempCategory.name}</a></td>
						        <td>${tempCategory.description}</td>
						        
						        <c:set var = "available" scope = "request" value = "${tempCategory.isAvailable}"/>
						     
						        <% if (request.getAttribute("available").equals(true)) {%>
						        <td>Yes</td>
						        <% } else { %>
						        <td>No</td>
						        <% } %>
						        <td>
									<a href="${updateLink}" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
									<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this category?'))) return false"
									class="delete" ><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
								</td>
						       </tr>
					      </c:forEach>
				</tbody>
     </table>
     <!-- <div class="clearfix">
				<div class="hint-text"></div>
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div>
		</div> -->
		</div>
    </div> 
   </div>

</body>
</html>