<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirmation file after purchase</title>
    <link rel="stylesheet" href="./css/headerstyles.css">
    <style>
        /* Basic styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Big container (orange background acting as a border) */
        .big-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            background-color: white;
            padding: 40px; /* Add padding to create space between the orange and white containers */
        }

        /* Medium white container (centered inside the orange container) */
        .medium-container {
            background-color: orange;
            padding: 40px;
            border-radius: 10px;
            text-align: center;
            font-weight: bold;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 60%; /* Adjust the width to make it larger */
        }

        /* Small white container (centered inside the medium container) */
        .small-container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Text inside the medium container */
        .medium-container p {
            font-size: 1.5rem;
            margin: 10px 0;
        }

        /* Red button at the bottom */
        .okay-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: red;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            text-decoration: none; /* Remove underline */
        }

        .okay-button:hover {
            background-color: darkred;
        }

        /* Text in the orange container (ORDER CONFIRMED) */
        .order-confirmed {
            color: white;
            font-size: 2rem;
            font-weight: bold;
            text-transform: uppercase;
            margin-bottom: 20px;
        }
        
        h3{
        
        font-weight: bold;
        color: black;
        }
        
        .small-container p {
    margin-bottom: 30px; /* Adds space between the text and the button */
}
    </style>
</head>
<body>
       <!-- Header -->
	<div class="top-header">
	    <div class="brand-header">
	        <a href="home.jsp"> <img src="./images/brandlogo.png" alt="Raccoon Logo"> </a>
	        <h1>RACCOON PIZZERIA</h1>
	    </div>
	</div>

	<div class="main-header">
	    <div class="person-icon-container">
        	<img src="./images/person-icon.png" alt="Person Icon" class="person-icon">
        	<div class="dropdown-menu">
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
	
    
   <!-- Big container (WHITE background) -->
    <div class="big-container">
        <!-- Medium white container (inside the orange container) -->
        <div class="medium-container">
            <!-- Text in the orange container (ORDER CONFIRMED) -->
            <div class="order-confirmed">
            <h3>ORDER CONFIRMED</h3>
            </div>
            
            <!-- Small white container (inside the medium container) -->
            <div class="small-container">
                <p>20-30 Minutes...</p>
                <p>Your Order is Being Prepared!!</p>
                
                <!-- Red button linking to home.jsp -->
                <a href="home.jsp" class="okay-button">Okay!!</a>
            </div>
        </div>
    </div>
</body>
</html>
