<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>More</title>
    <link rel="stylesheet" href="./css/headerstyles.css">
    <link rel="stylesheet" href="./css/morestyles.css">
    <script src="./js/dropdown.js"></script>
    <style>
    	.hero-section {
            text-align: center;
            color: white;
        }
        .hero-section img {
            width: 100%;
            height: auto;
        }
    </style>
    
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
	        <a href="menu.jsp">Menu</a>
	        <a href="cart.jsp">Cart</a>
	        <a href="more.jsp">More</a>
	    </nav>
	</div>
	
    
     <!-- Hero Section -->
    <section class="hero-section">
        <img src="./images/pizza-banner.jpg" alt="Pizza">
    </section>
     
     <section class="about">
     	<h1>ABOUT US</h1>
     	<h2>Welcome to Raccoon Pizzeria!</h2>
		<h2>We are a local pizza shop dedicated to serving the best pizza in town. At Raccoon Pizzeria, every slice is crafted with love, using only the freshest ingredients and our signature recipes to ensure every bite is unforgettable.
		Whether you’re in the mood for a classic Margherita or one of our specialty creations, we’ve got something to satisfy every craving.</h2>
     </section>
     
     <h2 class="more-info">Have questions, feedback, or just want to say hello?</h2>
     
     <section class="contact-company">
     	
     	<h2>Email us: raccoonpizzeria@gmail.com</h2>
		<h2>Visit us at: Sri Rampai, Kuala Lumpur</h2>
		<h1>LOCATE US</h1>
     </section>
    


</body>

</html>
