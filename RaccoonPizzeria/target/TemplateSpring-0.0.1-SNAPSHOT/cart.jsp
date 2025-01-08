<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Cart</title>
    <style>
        /* Basic CSS styling for the page */
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
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
    </style>
</head>
<body>

    <div class="container">
        <h1>My Cart</h1>

        <!-- Form to refresh the cart -->
        <form action="cart" method="get">
            <button type="submit">Refresh Cart</button>
        </form>

        <!-- Check if cart is not empty -->
        <c:if test="${not empty cart.items}">
            <table border="1">
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
            <a href="checkout.jsp" class="checkout-button">CHECKOUT</a>
        </c:if>

        <!-- If cart is empty -->
        <c:if test="${empty cart.items}">
            <p>Your cart is empty.</p>
        </c:if>

    </div>

</body>
</html>
