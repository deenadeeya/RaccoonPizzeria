<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="./css/headerstyles.css">
		<link rel="stylesheet" href="./css/profilestyles.css">
		<script src="./js/dropdown.js"></script>
		<title>Profile</title>
	</head>
	
	<body>
	 <!-- Header -->
	<div class="top-header">
	    <div class="brand-header">
	        <img src="./images/brandlogo.png" alt="Raccoon Logo">
	        <h1>RACCOON PIZZERIA</h1>
	    </div>
	</div>

	<div class="main-header">
	    <div class="person-icon-container">
        	<img src="./images/person-icon.png" alt="Person Icon" class="person-icon">
        	<div class="dropdown-menu">
	            <a href="register.jsp">Register</a>
	            <a href="login.jsp">Login</a>
        	</div>
    	</div>
    	
    	<!-- Navigation Bar -->
	    <nav class="nav-bar">
	        <a href="home.jsp">Home</a>
	        <a href="#">Menu</a>
	        <a href="more.jsp">More</a>
	    </nav>
	</div>
	
	    
	    
	    <div class="profile-container"><h2 class="mt-2">Welcome User</h2></div>
	    <div class="container">
		    <div class="custom-card">
		        <a href="home.jsp" class="back-button">&larr;</a>        
		        <!-- Card section -->
		        <div class="card-container">
		            <form>
		                <div class="mb-3"><p><strong>Name:</strong></p></div>
		                <div class="mb-3"><p><strong>Email:</strong></p></div>
		                <div class="mb-3"><p><strong>Raccooneria ID:</strong></p></div>
		                <div class="mb-3"><p><strong>Phone Number:</strong></p></div>
		                <div class="mb-3"><p><strong>Gender:</strong></p></div>
		                <div class="mb-3"><p><strong>Address:</strong></p></div>
		                <div class="mb-3"><p><strong>Password:</strong></p></div>
		                <div class="d-grid">
		                	<button type="button" class="btn btn-danger">Edit Card</button>
		               	</div>
		            </form>
		        </div>
		    </div>
		</div>

	</body>
</html>
