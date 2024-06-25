<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fruits and Veggies</title>
<%@include file="Components/Common_js_css.jsp"%> 
 <%@include file="Components/Navbar.jsp" %> 

<style>

body{
/*  background-color: #8BC34A;*/
 background-image: url("https://plus.unsplash.com/premium_photo-1678187782578-70b5a348f502?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fGJhY2tncm91bmQlMjAlMjBmb3IlMjBncm9jZXJ5JTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D");

}
.card-container {
    display: flex;
    flex-wrap: wrap;
    justify-content:center;
    gap: 40px; /* Adjust the gap between cards as needed */
  }
 .Heading{
 display: flex;
    justify-content: center; /* Center horizontally */
    align-items: center; 
    color: white;/* Center vertically */
    font-weight: bolder;
    
 }
</style>
</head>
<body>
<h1 class="Heading">This is Fruits and Vegetable Category</h1>
<div class="card-container">
<div class="card" style="width: 18rem;">
<img src="https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/assets/products/sliding_images/jpeg/27055af4-f9ca-49f5-a84b-cf407583be43.jpg?ts=1711019907" class="card-img-top" alt="...">
<div class="card-body">
  <h5 class="card-title">Green Chilli</h5>
  <p class="card-text">100g</p>
  <h5>₹19</h2>
  <h6 style="text-decoration: line-through;">₹24</h6>
  <a href="#" class="btn btn-primary">Add</a>
</div>
</div>
<div class="card" style="width: 18rem;">
<img src="https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/assets/products/sliding_images/jpeg/0074b9f6-c141-44b0-a00c-0278d5d315ca.jpg?ts=1711473366" class="card-img-top" alt="...">
<div class="card-body">
  <h5 class="card-title">Potatoes</h5>
  <p class="card-text">1kg</p>
  <h5>₹45</h2>
  <h6 style="text-decoration: line-through;">₹60</h6>
  <a href="#" class="btn btn-primary">Add</a>
</div>
</div>
<div class="card" style="width: 18rem;">
<img src="https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/assets/products/sliding_images/jpeg/fc97e36f-ae48-4261-99d7-718cb9b2f5e6.jpg?ts=1711010248" alt="...">
<div class="card-body">
  <h5 class="card-title">Onions</h5>
  <p class="card-text">1kg</p>
  <h5>₹27</h2>
  <h6 style="text-decoration: line-through;">₹37</h6>
  <a href="#" class="btn btn-primary">Add</a>
</div>
</div>
<div class="card" style="width: 18rem;">
<img src="https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/assets/products/sliding_images/jpeg/cd877564-10c0-44c4-ad65-3559c19e5f76.jpg?ts=1711100074" class="card-img-top" alt="...">
<div class="card-body">
  <h5 class="card-title">Tomatoes</h5>
  <p class="card-text">500g</p>
  <h5>₹17</h2>
  <h6 style="text-decoration: line-through;">₹21</h6>
  <a href="#" class="btn btn-primary">Add</a>
</div>
</div>
<div class="card" style="width: 18rem;">
<img src="https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/images/products/sliding_image/72309a.jpg?ts=1690813270" class="card-img-top" alt="...">
<div class="card-body">
  <h5 class="card-title">Brinjals</h5>
  <p class="card-text">500g</p>
  <h5>₹24</h2>
  <h6 style="text-decoration: line-through;">₹32</h6>
  <a href="#" class="btn btn-primary">Add</a>
</div>
</div>
<div class="card" style="width: 18rem;">
<img src="https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/assets/products/sliding_images/jpeg/27055af4-f9ca-49f5-a84b-cf407583be43.jpg?ts=1711019907" class="card-img-top" alt="...">
<div class="card-body">
  <h5 class="card-title">Green Chilli</h5>
  <p class="card-text">100g</p>
  <h5>₹19</h2>
  <h6 style="text-decoration: line-through;">₹24</h6>
  <a href="#" class="btn btn-primary">Add</a>
</div>
</div>
<div class="card" style="width: 18rem;">
<img src="https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/assets/products/sliding_images/jpeg/27055af4-f9ca-49f5-a84b-cf407583be43.jpg?ts=1711019907" class="card-img-top" alt="...">
<div class="card-body">
  <h5 class="card-title">Green Chilli</h5>
  <p class="card-text">100g</p>
  <h5>₹19</h2>
  <h6 style="text-decoration: line-through;">₹24</h6>
  <a href="#" class="btn btn-primary">Add</a>
</div>
</div>
<div class="card" style="width: 18rem;">
<img src="https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/assets/products/sliding_images/jpeg/27055af4-f9ca-49f5-a84b-cf407583be43.jpg?ts=1711019907" class="card-img-top" alt="...">
<div class="card-body">
  <h5 class="card-title">Green Chilli</h5>
  <p class="card-text">100g</p>
  <h5>₹19</h2>
  <h6 style="text-decoration: line-through;">₹24</h6>
  <a href="#" class="btn btn-primary">Add</a>
</div>
</div>
</div>

</body>
</html>