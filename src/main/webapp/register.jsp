<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New user</title>
<%@include file="Components/Common_js_css.jsp"%>
<style>
.background-container {
	background-image: url('https://plus.unsplash.com/premium_photo-1661331839523-d381b3c8db1b?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
	background-size: cover;
	/* Adjusts the background image size to cover the entire container */
	/* Additional CSS properties for positioning or styling */
}

.form-label {
	color: #000000; /* Extra dark color (black) */
	font-weight: bold; /* Optionally, make the text bold */
}

#Register{
 display: flex;
 justify-content: center;
 align-items: center;
  height: 119px;
  widows: 25px;
  margin-top: -48px;
  margin-left: 186px;
}
</style>
</head>
<body>
	<%@include file="Components/Navbar.jsp"%>
	
	
	<div class="container-fluid">
	
	<div class="background-container">
		<div class="row mt-5">
		
			<div class="col-md-4 offset-md-4">
			<img alt="" src="https://media.istockphoto.com/id/1407633532/vector/forget-password-icon-account-protection-security-key-danger-warning-wrong-password-design.jpg?s=612x612&w=0&k=20&c=ndcQG3ade6MLqbFbD5-pGgJSM-I76IFxHXAUmeY9Bfw=" id="Register">
			
				<h3 class="text-center my-3">Sign up here !!</h3>
				

				<form action="RegisterServlet" method="post" >

					<div class="mb-3">
						<label for="name" class="form-label">User Name</label> <input
							name="name" type="text" class="form-control" id="name"
							aria-describedby="emailHelp" placeholder="Enter Name">
					</div>

					<div class="mb-3">
						<label for="email" class="form-label">Enter Email</label> <input
						name="email" type="email" class="form-control" id="email"
							aria-describedby="emailHelp" placeholder="Enter Email">
					</div>

					<div class="mb-3">
						<label for="pass" class="form-label">Enter Password</label> <input
						name="pass"	type="password" class="form-control" id="pass"
							aria-describedby="emailHelp" placeholder="Enter Password">
					</div>

					<div class="mb-3">
						<label for="phon" class="form-label">Enter Number </label> <input
						name="phone"	type="number" class="form-control" id="phone"
							aria-describedby="emailHelp" placeholder="Enter Name">
					</div>

					<div class="mb-3">
						<label for="name" class="form-label">User Address</label>
						<textarea name="address" style="height: 100px;" class="form-control"
							placeholder="Enter your address"></textarea>


						<div class="container text-center mt-2">
							<button class="btn btn-outline-success">Register</button>
							<button class="btn btn-outline-warning">Reset</button>
						</div>
				</form>
				

			</div>


		</div>
	</div>
	
	</div>
<%@include file="Components/Message.jsp" %>
</body>
</html>