<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="./css/headerstyles.css">
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
