<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="./css/headerstyles.css">
		<link rel="stylesheet" href="./css/profilestyles.css">
		<title>Profile</title>
	</head>
	
	<body>
		<!-- Header -->
 	<div class="flex-container">
    	<div class="brand-header">
            <img src="./images/brandlogo.png" alt="Raccoon Logo">
            <h1>RACCOON PIZZERIA</h1>
        </div>
 	</div>
        <!-- Top rectangle: Logo and name -->
        

	 <section class="nav-bar">
        <!-- White navigation bar -->
            <nav>
                <a href="#">Home</a>
                <a href="#">Menu</a>
                <a href="#">Promo</a>
                <a href="#">More</a>
            </nav>
     </section> 
    
	    
	    
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
