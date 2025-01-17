<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register</title>
  <link rel="stylesheet" href="./css/headerstyles.css">
  <link rel="stylesheet" href="./css/registerstyles.css">
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


    <!-- Back to Home Link -->
    <a href="<%= request.getContextPath() %>/home.jsp" class="back-to-home">&#8592; Back to Home</a>

    <div class="login-container">
        <h1>CREATE AN ACCOUNT</h1>
        <form action="registerServlet" method="post" class="login-form">
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

            <button type="submit" class="signup-btn">Sign Up</button>
        </form>
    </div>
</body>
</html>
