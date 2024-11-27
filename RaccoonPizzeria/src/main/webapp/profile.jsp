<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Spicy+Rice">
	
	<style>
		
		/* Custom background color for container */
		.custom-card {
            background-color: #ffc460; 
        }
        
		/* Custom header styles */
		.header {
  			font-family: "Spicy Rice", serif;
		}
		.header {
            background-color: orange;
            padding: 20px 10px;
            position: relative;
        }
        .header h1 {
            margin: 0;
            text-align: center;
            color: white;
        }
        .header img {
            height: 40px;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
        }
        .header .left-logo {
            left: 10px;
        }
        .header .right-logo {
            right: 10px;
        }

        /* Profile container styling */
        .profile-container {
            margin-top: -40px;
            text-align: center;
        }
        
        /* Profile image style */
        .profile-container img.profile-image {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            border: 3px solid #ddd;
            margin-bottom: 10px;
        }

        .back-button {
   			position: absolute;
    		left: 10px;
    		top: 100px;  /* Decrease the top value to move the button higher */
    		font-size: 24px;
		}
        
        /* Card container styling */
        .card-container {
            margin-top: 10px;
        }

        
	</style>
	<title>RaccoonPizzeria</title>
</head>

<body>
	 <div class="header">
        <img src="./images/brandlogo.png" alt="Left Logo" class="left-logo">
        <h1>RACCOON PIZZERIA</h1>
        <img src="./images/brandlogo.png" alt="Right Logo" class="right-logo">
    </div>

    <div class="container">
        <a href="home.jsp" class="back-button text-decoration-none">&larr;</a>
        
        <!-- Profile Section -->
        <div class="profile-container">
            <img src="profile-logo.png" alt="Profile Logo" class="profile-image"> <!-- Profile logo added here -->
            <h2 class="mt-2">Welcome User</h2>
        </div>

        <!-- Card section -->
        <div class="card shadow card-container custom-card">
            <div class="card-body">
                <form>
                    <div class="mb-3">
                         <p><strong>Name:</strong></p>
                </div>

                <div class="mb-3">
                    <p><strong>Email:</strong></p>
                </div>

                <div class="mb-3">
                    <p><strong>Raccooneria ID:</strong></p>
                </div>

                <div class="mb-3">
                    <p><strong>Phone Number:</strong></p>
                </div>

                <div class="mb-3">
                    <p><strong>Gender:</strong></p>
                </div>

                <div class="mb-3">
                    <p><strong>Address:</strong></p>
                </div>

                <div class="mb-3">
                    <p><strong>Password:</strong></p>
                </div>

                <div class="d-grid">
                    <button type="button" class="btn btn-danger">Edit Card</button>
                </div>
            </div>
        </div>
    </div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
