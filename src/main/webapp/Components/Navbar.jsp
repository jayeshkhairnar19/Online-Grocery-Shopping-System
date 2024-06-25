<%@page import="Entities.User" %>
<%
User user1 = (User)session.getAttribute("current-user");



%>





<nav class="navbar navbar-expand-lg navbar-dark  custom-bg">
	<div class="container">
		<a class="navbar-brand" href="#">Grocery Shop</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="fruits_veggies.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Catagory </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="fruits_veggies.jsp">Fruits and Vegetables</a> 
					    <a class="dropdown-item" href="#">Biscuits and Snacks</a>
					     <a class="dropdown-item" href="#">Breads and Bakery</a>
					     <a class="dropdown-item" href="#">Grocery and Staples</a>
					     <a class="dropdown-item" href="#">Frozen Foods</a>
		
					</div></li>
					
			</ul>

			<ul class="navbar-nav ml-auto" >
			<%
			if(user1==null){
				%>
				<li class="nav-item active"><a class="nav-link" href="register.jsp">Sign Up
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="signin.jsp">Sign In
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="admin.jsp">Admin
						<span class="sr-only">(current)</span>
				</a></li>
				
				
				<%
			}
			else{
				%>
				<li class="nav-item active"><a class="nav-link" href="#"><%=user1.getUserName() %>
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="LogoutServlet">Logout
						<span class="sr-only">(current)</span>
				</a></li>
				
				
				<%
				
			}
			
			
			%>
				
				
				<!-- <li class="nav-item active"><a class="nav-link" href="admin.jsp">Admin
						<span class="sr-only">(current)</span>
				</a></li> -->
			</ul>
			<!-- <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form> -->
		</div>
	</div>
</nav>