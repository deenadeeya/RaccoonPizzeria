<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Single CSS Link -->
    <link rel="stylesheet" href="./css/headerstyles.css">
    <link rel="stylesheet" href="./css/loginstyles.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Spicy+Rice">
    <script src="./js/dropdown.js"></script>
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


        <div id="login-container">
        <h2>LOGIN</h2>
        <form class="login-form">
            <input type="email" id="email" placeholder="Enter your email" required>
            <input type="password" id="password" placeholder="Enter your password" required>
            <button type="button" onclick="login()">Submit</button>
        
    </div>


    <script>
        function login() {
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;

            // Check credentials
            if (email === 'tansim@gmail.com' && password === '1234') {
                location.href = 'admin-menu.jsp'; // Redirect to admin dashboard
            } else if (email === 'jomana@gmail.com' && password === '1234') {
                location.href = 'home.jsp'; // Redirect to customer dashboard
            } else {
                alert('Invalid email or password'); // Show error message
            }
        }
    </script>
</body>
</html>
