<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Sign In</title>
<%@include file="Components/Common_js_css.jsp"%>
<style >
body{
 background-image: url("https://plus.unsplash.com/premium_photo-1678187782578-70b5a348f502?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fGJhY2tncm91bmQlMjAlMjBmb3IlMjBncm9jZXJ5JTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D");
}


</style>

</head>
<body>
<%@include file="Components/Navbar.jsp"%>
 <div class="container">
 <div class="row">
  <div class="col-md-6 offset-md-3">
    <div class="card mt-3">
    <div class="card-header">
    <h3>Sign In</h3>
    
    </div>
    <div class="container text-center">
     
    <img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdg3b9rbfxAG8g9q-OrOXVltMWmak0_5WSJw&s">
    </div>
    <div class="card-body">
   
    <form action="LoginServlet" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="pass">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <div class="container  text-center">
 <button type="submit" class="btn btn-primary">Submit</button> 
 <!--  <button type="button" class="btn btn-primary"><a href="register.jsp">Sign Up</button> -->
 <button type="button" class="btn btn-primary"><a href="register.jsp" style="color: white; text-decoration: none;">Sign Up</a></button>
 
  </div>
  <%@include file="Components/Message.jsp" %>
</form>
    
    </div>
    
    </div>
  </div>
 </div>
 
 </div>
</body>
</html>