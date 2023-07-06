<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration |</title>
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
				<span> 
				    <a href="./" class="btn btn-primary float-sm-left">Back</a>
				</span>
				
				<form class="form-horizontal" action="register2" method="post">
					<fieldset>
						<!-- Form Name -->
						<legend>Registration Form</legend>
						<hr>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="name">Name</label>
							<div class="col-md-4">
								<input name="name" placeholder="Enter Full  Name"
									class="form-control input-md" />
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="mobileNumber">Mobile
								Number</label>
							<div class="col-md-4">
								<input name="mobileNumber" placeholder="Enter Mobile Number"
									class="form-control input-md" />
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

				</form>


			</div>
		</div>
	</div>
</body>
</html>