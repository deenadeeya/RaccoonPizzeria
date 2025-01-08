<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="./css/headerstyles.css">
    <script src="./js/dropdown.js"></script>

    <style>
    
        /* Hero section */
        .hero-section {
            text-align: center;
            color: white;
        }
        .hero-section img {
            width: 100%;
            height: auto;
        }
        .hero-section h1 {
            margin-top: 20px;
            font-size: 2.5rem;
            color: #000;
        }

        /* Promo images */
        .promo-section {
            display: flex;
            justify-content: center;
            gap: 15px;
            padding: 20px;
        }
        .promo-section img {
            width: 45%;
            height: auto;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <!-- Header -->
	<div class="top-header">
	    <div class="brand-header">
	        <a href="register.jsp"> <img src="./images/brandlogo.png" alt="Raccoon Logo"> </a>
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
        <h1>FIND YOUR BEST IN THE RACCOONERIA</h1>
    </section>

    <!-- Promo Section -->
    <section class="promo-section">
        <img src="./images/pizza1.jpg" alt="Promo 1">
        <img src="./images/pizza1.jpg" alt="Promo 2">
    </section>
</body>

</html>
