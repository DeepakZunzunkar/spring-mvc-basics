<%@page import="com.dz.app.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Form |</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="card">
		<div class="card-body">

			<div class="container">
				<span> <a href="./" class="btn btn-primary float-sm-left">Back</a>
				</span>
				<form:form class="form-horizontal" action="register" method="post"
					modelAttribute="EmployeeForm">
					<fieldset>

						<!-- Form Name -->
						<legend>Registration Form</legend>
						<hr>


						<%-- <form:input path="id"/> --%>

						<form:hidden path="id" />

						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-4 control-label" path="name">Name</form:label>
							<div class="col-md-4">
								<form:input path="name" placeholder="Enter Full  Name"
									class="form-control input-md" />
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-4 control-label" path="mobileNumber">Mobile Number</form:label>
							<div class="col-md-4">
								<form:input path="mobileNumber"
									placeholder="Enter Mobile Number" class="form-control input-md" />
							</div>
						</div>

						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label" for=""></label>
							<div class="col-md-4">
								<button type="submit" class="btn btn-success">Register</button>
							</div>
						</div>

					</fieldset>

				</form:form>
				<%
					Employee emp = (Employee) request.getAttribute("EmployeeForm");
					if (emp != null && emp.getId() != null) {
				%>
				<div class="alert alert-success alert-dismissible fade show"
					role="alert">
					<strong>Found Employee ID!</strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<%
					}else{
				%>
				<!-- <div class="alert alert-danger alert-dismissible fade show"
                    role="alert">
                    <strong>Fail to Add !</strong>
                    <button type="button" class="close" data-dismiss="alert"
                        aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div> -->
				
				<%
                    }
                %>
				<h2>Employee List</h2>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Mobile Number</th>
							<th>Action</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ list }" varStatus="row" var="emp">
							<tr>
								<%-- <td>${ row.count }</td> --%>
								<td>${ emp.id }</td>
								<td>${ emp.name }</td>
								<td>${ emp.mobileNumber }</td>
								<td>
								    <a href="deleteEmployee?id=${ emp.id}"class="btn btn-danger">Delete By Id</a>
								    <a href="editEmployee?id=${ emp.id}" class="btn btn-primary">Edit</a>
								    <a href="deleteEmployeeByName/${emp.name}" class="btn btn-danger">Delete By Name</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>