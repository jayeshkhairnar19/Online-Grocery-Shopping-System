<%@page import="java.util.ArrayList"%>
<%@page import="Entities.Categories"%>
<%@page import="java.util.List"%>
<%@page import="Project.FactoryProvider"%>
<%@page import="Dao.CatagoryDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<!--  <meta charset="UTF-8">-->
<title>Admin</title>
<%@include file="Components/Common_js_css.jsp"%>




<style>
* {
	margin: 0;
	padding: 0;
}



.font {
	font-family: 'Courier New', monospace;
	color: rgb(179, 184, 178);
}

.admin .card {
	border: 1px solid rgb(182, 25, 25);
}

.admin .card:hover {
	background: #e2e2e2;
	cursor: pointer;
}
body{
 background-image: url("https://plus.unsplash.com/premium_photo-1678187782578-70b5a348f502?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fGJhY2tncm91bmQlMjAlMjBmb3IlMjBncm9jZXJ5JTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D");
}

.admin .card{
	border: 2px solid blue;
}

.admin .card:hover{
	/background: #e2e2e2;/
   background: rgb(0, 255, 64);
  /* background: blue;*/
	cursor: pointer;
}


</style>
</head>
<body>
<%@include file="Components/Navbar.jsp"%>
<div class="container admin">
	<div class="row mt-5">
			<div class="col-md-4">
				<div class="card">
				 	<div class="card-body text-center">
				 	<div class="container">
				 	 	<img style="max-width : 125px;" class="img-fluid rounded-circle" src="Image/man.png">
				 	</div>
				 	<h1>2345</h1>
				 	<h1>User</h1>
				 	</div>
				</div>
			</div>
			<div class="col-md-4">
			<div class="card">
				 	<div  class="card-body text-center">
				 	<div class="container">
				 	 	<img style="max-width : 125px;" class="img-fluid" src="Image/categories.png">
				 	</div>
				 	<h1>7896</h1>
				 	<h1>Categories</h1>
				 	</div>
				</div>
			

	</div>
	<div class="col-md-4">
			<div class="card">
				 	<div  class="card-body text-center">
				 	<div class="container">
				 	 	<img style="max-width : 125px;" class="img-fluid" src="Image/product.png">
				 	</div>
				 	<h1>7896</h1>
				 	<h1>Product</h1>
				 	</div>
				</div>
			

	</div>


</div>

<div class="row mt-3">
 	<div class="col-md-6">
				<div class="card" data-toggle="modal" data-target="#add-catagory-model">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 125px;" class="img-fluid"
								src="Image/add-product.png">
						</div class="font">
						<p class="mt-2">Click here to add new Catagory</p>
						<h1>Add Catagory</h1>
					</div>
				</div>

			</div>
 	<div class="col-md-6">
				<div class="card" data-toggle="modal" data-target="#add-product-model">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 125px;" class="img-fluid"
								src="Image/plus.png">
						</div class="font">
						<p class="mt-2">Click here to add new product</p>
						<h1>Add Product</h1>
					</div>
				</div>

			</div>

</div>

</div>
<!-- add category modal -->

<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button> -->
<!-- Modal -->
<div class="modal fade" id="add-catagory-model" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill Catagory Details...</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
       <form action="ProductOperationServlet" method="post">
       
       <input type="hidden" name="operation" value="addcatagory">
       
       <div class="form-group">
       	<input type="text" class="form-control" name="catTitle" placeholder="Enter Catagory Title" required /> 
       </div>
       <div class="form-group">
       <textarea class="form-control" placeholder="Enter Catagory Description" name="catDiscription" required></textarea>
       </div>
       
       <div class="container text-center">
       	<button class="btn btn-outline-success">Add Category</button>
       </div>
       
       
       </form>
       
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       </div>
    </div>
  </div>
</div>
 

<!-- end category modal -->
<!-- modal for add product -->
   <div class="modal fade" id="add-product-model" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill product Details...</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
       <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">
       
       <input type="hidden" name="operation" value="addproduct">
       
       <div class="form-group">
       	<input type="text" class="form-control" name="pName" placeholder="Enter Product Name" required /> 
       </div>
       <div class="form-group">
       <textarea class="form-control" placeholder="Enter Product Description" name="pDescription" required></textarea>
       </div>
      
      
      
        <div class="form-group">
       	<input type="number" class="form-control" name="pPrice" placeholder="Enter Price" required /> 
       </div>
        <div class="form-group">
       	<input type="number" class="form-control" name="pDiscount" placeholder="Enter Discount Price" required /> 
       </div>
        <div class="form-group">
       	<input type="number" class="form-control" name="pQuantity" placeholder="Enter Quantiy" required /> 
       </div>
       
        <%--  <%
        /* List<Categories> li = new ArrayList<>();*/
		List<Categories> li = new ArrayList<>();
      
        // CatagoryDao cd = new CatagoryDao(FactoryProvider.getFactory());
        try {
            CatagoryDao cd = new CatagoryDao(FactoryProvider.getFactory());
            // Other code using CatagoryDao
            //li = catagoryDao.getAllCategories(); 
            li = CatagoryDao.getAllCategories();
           
        } catch (Exception e) {
            // Handle the exception appropriately, e.g., logging or displaying an error message
            e.printStackTrace(); // This is just an example; you might want to handle the exception differently
        }

		
       %>
       
        <div class="form-group">
       		<select name="cID" class="form-control" id="">
       		
       		
       		<%
       		/*for(Catagory c : li)*/
       		/*for(Categories c : li)*/
       		for(Categories c : li)
       		{
       		%>
       		
       		<option value="<%=c.getCategoryId()%>"><%=c.getCategoryTitle() %></option>
       		
       		<%
       		}
       		%>  --%>
       		</select> 
       </div>
       
       <div class="form-group">
       <label for="pPhoto">Select picture of product</label><br>
       <input type="file" id="pPhoto" name="pPhoto" required/>
       </div>
       
       
       
       <div class="container text-center">
       	<button class="btn btn-outline-success">Add Product</button>
       </div>
       
       
      
       
       </form>
       
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       </div>
    </div>
  </div>
</div>
     




</body>
</html>