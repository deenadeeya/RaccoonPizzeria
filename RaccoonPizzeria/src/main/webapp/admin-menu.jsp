<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <link rel="stylesheet" href="./css/headerstyles.css">
    <link rel="stylesheet" href="./css/menustyles.css">
    <script src="./js/dropdown.js"></script>
    
    <style>
        /* Menu Section */
        .menu-section {
            padding: 20px;
            text-align: center;
        }
        .menu-section h1 {
            margin-bottom: 20px;
            font-size: 2.5rem;
        }
        .menu-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .menu-item {
            width: 300px;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .menu-item img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }
        .menu-item h3 {
            margin: 10px 0;
            font-size: 1.5rem;
        }
        .menu-item p {
            margin: 5px 0;
            color: #555;
        }
        section {
           margin-bottom: 30px; /* Adds spacing between sections */
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
	
<main>
    <!-- Menu Section -->
    <section class="menu-section">
        <h1>Our Menu</h1>

        <!-- Pizzas Section -->
        <section>
            <h2>Pizzas</h2>
            <div class="menu-grid">
                <div class="menu-item">
                    <img src="./images/pizzas/pepperoni.jpg" alt="Cheesy Beef Pepperoni">
                    <p>Cheesy Beef Pepperoni</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Cheesy Beef Pepperoni">
                        <input type="hidden" name="category" value="Pizza">
                        <input type="hidden" name="imagePath" value="/images/pizzas/pepperoni.jpg">
                        <input type="hidden" name="price" value="25.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
                <div class="menu-item">
                    <img src="./images/pizzas/chicken_veggie.jpg" alt="Chicken Veggie">
                    <p>Chicken Veggie</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Chicken Veggie">
                        <input type="hidden" name="category" value="Pizza">
                        <input type="hidden" name="imagePath" value="/images/pizzas/chicken_veggie.jpg">
                        <input type="hidden" name="price" value="22.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
                <div class="menu-item">
                    <img src="./images/pizzas/classic_mozzarella.jpg" alt="Classic Mozzarella">
                    <p>Classic Mozzarella</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Classic Mozzarella">
                        <input type="hidden" name="category" value="Pizza">
                        <input type="hidden" name="imagePath" value="/images/pizzas/classic_mozzarella.jpg">
                        <input type="hidden" name="price" value="18.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
                <div class="menu-item">
                    <img src="./images/pizzas/original_italian.jpg" alt="Original Italian">
                    <p>Original Italian</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Original Italian">
                        <input type="hidden" name="category" value="Pizza">
                        <input type="hidden" name="imagePath" value="/images/pizzas/original_italian.jpg">
                        <input type="hidden" name="price" value="20.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
                <div class="menu-item">
                    <img src="./images/pizzas/beef_veggie.jpg" alt="Beef Veggie">
                    <p>Beef Veggie</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Beef Veggie">
                        <input type="hidden" name="category" value="Pizza">
                        <input type="hidden" name="imagePath" value="/images/pizzas/beef_veggie.jpg">
                        <input type="hidden" name="price" value="24.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
                <div class="menu-item">
                    <img src="./images/pizzas/pop_up_chicken.jpg" alt="Pop-Up Chicken">
                    <p>Pop-Up Chicken</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Pop-Up Chicken">
                        <input type="hidden" name="category" value="Pizza">
                        <input type="hidden" name="imagePath" value="/images/pizzas/pop_up_chicken.jpg">
                        <input type="hidden" name="price" value="26.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
            </div>
        </section>

        <!-- Sides Section -->
        <section>
            <h2>Sides</h2>
            <div class="menu-grid">
                <div class="menu-item">
                    <img src="./images/sides/french_fries.jpg" alt="French Fries">
                    <p>French Fries</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="French Fries">
                        <input type="hidden" name="category" value="Side">
                        <input type="hidden" name="imagePath" value="/images/sides/french_fries.jpg">
                        <input type="hidden" name="price" value="5.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
                <div class="menu-item">
                    <img src="./images/sides/cheese_fries.jpg" alt="Jerky Cheese Fries">
                    <p>Jerky Cheese Fries</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Jerky Cheese Fries">
                        <input type="hidden" name="category" value="Side">
                        <input type="hidden" name="imagePath" value="/images/sides/cheese_fries.jpg">
                        <input type="hidden" name="price" value="6.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
                
                <div class="menu-item">
                    <img src="./images/sides/nuggets.jpg" alt="Nuggets">
                    <p>Nuggets</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Nuggets">
                        <input type="hidden" name="category" value="Side">
                        <input type="hidden" name="imagePath" value="/images/sides/nuggets.jpg">
                        <input type="hidden" name="price" value="7.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
            </div>
        </section>

        <!-- Drinks Section -->
        <section>
            <h2>Drinks</h2>
            <div class="menu-grid">
                <div class="menu-item">
                    <img src="./images/drinks/grape_soda.jpg" alt="Grape Soda">
                    <p>Grape Soda</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Grape Soda">
                        <input type="hidden" name="category" value="Drink">
                        <input type="hidden" name="imagePath" value="/images/drinks/grape_soda.jpg">
                        <input type="hidden" name="price" value="3.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
                
                
                <div class="menu-item">
                    <img src="./images/drinks/strawberry_soda.jpg" alt="Strawberry Soda">
                    <p>Strawberry Soda</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Strawberry Soda">
                        <input type="hidden" name="category" value="Drink">
                        <input type="hidden" name="imagePath" value="/images/drinks/strawberry_soda.jpg">
                        <input type="hidden" name="price" value="3.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
                
                
                <div class="menu-item">
                    <img src="./images/drinks/orange_soda.jpg" alt="Orange Soda">
                    <p>Orange Soda</p>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="name" value="Orange Soda">
                        <input type="hidden" name="category" value="Drink">
                        <input type="hidden" name="imagePath" value="/images/drinks/orange_soda.jpg">
                        <input type="hidden" name="price" value="3.00">
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
            </div>
        </section>
    </main>
</body>
</html>
