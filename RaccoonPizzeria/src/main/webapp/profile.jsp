<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="./css/headerstyles.css">
		<link rel="stylesheet" href="./css/profilestyles.css">
		
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Spicy+Rice">
		
		<title>RaccoonPizzeria</title>
	</head>
	
	<body>
		<header>
	        <img src="./images/brandlogo.png" alt="Raccoon Logo">
	        <nav>
	            <a href="#">Home</a>
	            <a href="#">Menu</a>
	            <a href="#">Promo</a>
	            <a href="#">More</a>
	        </nav>
	        <div class="cart-icons">
	            <i class="fa fa-user"></i>
	            <i class="fa fa-shopping-cart"></i>
	            <i class="fa fa-paper-plane"></i>
	        </div>
	    </header>
	
	    <div class="container">
	        <a href="home.jsp" class="back-button text-decoration-none">&larr;</a>
	        
	        <!-- Profile Section -->
	        <div class="profile-container">
	            <h2 class="mt-2">Welcome User</h2>
	        </div>
	
	        <!-- Card section -->
	        <div class="card shadow card-container custom-card">
	            <div class="card-body">
	                <form>
	                    <div class="mb-3">
	                         <p><strong>Name:</strong></p>
	                	</div>
	
		                <div class="mb-3">
		                    <p><strong>Email:</strong></p>
		                </div>
	
		                <div class="mb-3">
		                    <p><strong>Raccooneria ID:</strong></p>
		                </div>
	
		                <div class="mb-3">
		                    <p><strong>Phone Number:</strong></p>
		                </div>
	
		                <div class="mb-3">
		                    <p><strong>Gender:</strong></p>
		                </div>
	
		                <div class="mb-3">
		                    <p><strong>Address:</strong></p>
		                </div>
		
		                <div class="mb-3">
		                    <p><strong>Password:</strong></p>
		                </div>
		
		                <div class="d-grid">
		                    <button type="button" class="btn btn-danger">Edit Card</button>
		                </div>
	            </div>
	        </div>
	    </div>
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>
