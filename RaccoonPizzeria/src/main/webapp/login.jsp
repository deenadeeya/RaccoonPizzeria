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
</head>
<body>
    <!-- Header -->
	<div class="top-header">
	    <div class="brand-header">
	        <a href="register.jsp"> <img src="./images/brandlogo.png" alt="Raccoon Logo"> </a>
	        <h1>RACCOON PIZZERIA</h1>
	    </div>
	</div>

	
            <div class="login-container">
            <h2>Login</h2>
       			<input type="email" id="email" placeholder="Enter your email" required>
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required> <!-- Changed to password type -->
            </div>
    
            <button type="submit" class="login-btn">Continue</button>
        </form>
    </div>
    
    <script>
        function login() {
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;

            // Check credentials
            if (email === 'tansim@gmail.com' && password === '666') {
                location.href = 'home.jsp'; // Redirect to admin dashboard
            } else if (email === 'jumana@gmail.com' && password === '000') {
                location.href = 'customer_dashboard.jsp'; // Redirect to customer dashboard
            } else {
                alert('Invalid email or password'); // Show error message
            }
        }
    </script>

    
</body>
</html>
