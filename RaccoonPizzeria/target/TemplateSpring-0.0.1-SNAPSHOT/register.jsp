<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register</title>
  <link rel="stylesheet" href="./css/headerstyles.css">
  <link rel="stylesheet" href="./css/registerstyles.css">
  <script src="./js/dropdown.js"></script>
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

    <div class="login-container">
        <h1>CREATE AN ACCOUNT</h1>

        <!-- Form: Updated action URL -->
        <form action="/RaccoonPizzeria/register" method="post" class="login-form">
            <div class="input-group">
                <label for="phonenumberEmail">Phone Number / Email</label>
                <input type="text" id="phonenumberEmail" name="phonenumberEmail" required>
            </div>

            <div class="input-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>

            <div class="input-group">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>

            <!-- Display error message if provided -->
            <c:if test="${not empty error}">
                <div class="error-message">
                    ${error}
                </div>
            </c:if>

            <button type="submit" class="signup-btn">Sign Up</button>
        </form>
    </div>
</body>
</html>
