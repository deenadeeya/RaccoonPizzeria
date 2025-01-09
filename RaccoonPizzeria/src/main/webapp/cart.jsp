<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Cart</title>
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

        /* Header Styling */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: #333;
            color: white;
        }

        header img {
            height: 50px;
            width: auto;
        }

        nav {
            flex-grow: 1;
            text-align: center;
        }

        nav a {
            color: white;
            margin: 0 20px;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.1rem;
        }

        nav a:hover {
            text-decoration: underline;
        }

        .cart-icons {
            display: flex;
            gap: 15px;
        }

        .cart-icons i {
            color: white;
            font-size: 1.5rem;
            cursor: pointer;
        }

        /* Basic CSS styling for the page */
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
            background-color: white; /* Temporary background color to test */
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
        }

        .cart-item {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .cart-item img {
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }

        .cart-item-details {
            flex-grow: 1;
        }

        .cart-item-price {
            font-weight: bold;
        }

        .cart-summary {
            margin-top: 20px;
        }

        .checkout-button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #ff6600;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
        }

        .refresh-button {
            display: block;
            width: 50%;
            padding: 10px;
            background-color: #ff6600;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            margin: 0 auto; /* This will center the button */
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            header {
                flex-direction: column;
                text-align: center;
            }

            nav a {
                margin: 10px 0;
            }

            .cart-icons {
                justify-content: center;
            }
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


	 <div class="container">
        <!-- Check if cart is not empty -->
        <c:if test="${not empty cart.items}">
            <table border="1" style="width: 100%; margin-top: 20px;">
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Quantity</th>
                        <th>Price (RM)</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Iterate over the cart items -->
                    <c:forEach var="item" items="${cart.items}" varStatus="status">
                        <tr>
                            <td>
                                <img src="${item.imagePath}" alt="Item Image">
                                <span>${item.name}</span>
                            </td>
                            <td>
                                <span>${cart.quantities[status.index]}</span>
                            </td>
                            <td>
                                <span>${item.price * cart.quantities[status.index]}</span>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="cart-summary">
                <p>Subtotal: RM <span>${cart.subtotal}</span></p>
                <p>Delivery Fee: RM <span>${cart.deliveryFee}</span></p>
                <p>Grand Total: RM <span>${cart.total}</span></p>
            </div>


            <!-- CHECKOUT PAGE -->
            <!-- CHANGED TO FIX ERROR-->
            <a href="${pageContext.request.contextPath}/checkout" class="checkout-button">CHECKOUT</a>
        </c:if>

        <!-- If cart is empty -->
        <c:if test="${empty cart.items}">
            <p style="text-align: center; font-size: 18px; font-weight: bold;">Your cart is empty.</p>
        </c:if>
        
    </div>

    <!-- Promo Section -->
    <section class="promo-section">
        <img src="./images/pizza1.jpg" alt="Promo 1">
        <img src="./images/pizza1.jpg" alt="Promo 2">
    </section>

</body>
</html>