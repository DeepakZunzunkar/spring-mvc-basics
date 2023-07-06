<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>Employee List</title>
</head>
<body>

	<div class="container">

		<h2>Employee List</h2>
		<span>
			<!-- <a href="./" class="btn btn-primary float-sm-right">Back</a> -->
			<a href="../employeeform" class="btn btn-primary float-sm-right">Back</a>
		</span>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Mobile Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ list }" varStatus="row" var="emp">
					<tr>
						<td>${ row.count }</td>
						<td>${ emp.name }</td>
						<td>${ emp.mobileNumber }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>