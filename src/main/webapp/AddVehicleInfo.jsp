<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Vehicle</title>
<style>
    /* Basic Reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    /* Body Styling */
    body {
        background-color: #e9f0f5;
        color: #444;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        padding: 20px;
    }

    /* Container Styling */
    .container {
        width: 80%;  /* Reduced width to make form box smaller */
        max-width: 500px;  /* Adjust max-width to fit better */
        background: #fff;
        padding: 30px;  /* Reduced padding to make the form more compact */
        border-radius: 10px;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    /* Header and Description Styling */
    h1 {
        font-size: 2rem;  /* Adjusted font size */
        color: #003366;
        margin-bottom: 10px;  /* Reduced margin */
    }

    .description {
        font-size: 0.9rem;
        color: #666;
        margin-bottom: 20px;
    }

    .form-title {
        font-size: 1.3rem;
        color: #333;
        margin-bottom: 20px;
        font-weight: bold;
    }

    /* Form Styling */
    form {
        display: flex;
        flex-direction: column;
        gap: 15px;  /* Reduced gap between form fields */
    }

    input[type="text"],
    input[type="number"],
    input[type="submit"],
    input[type="reset"] {
        padding: 12px;  /* Reduced padding */
        font-size: 1rem;
        margin: 8px 0;  /* Reduced margin */
        border: 1px solid #ddd;
        border-radius: 5px;
        transition: border-color 0.3s ease, background-color 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
        border-color: #003366;
        outline: none;
    }

    /* Submit and Reset Button Styling */
    .form-buttons {
        display: flex;
        justify-content: space-between;
        gap: 10px;
    }

    input[type="submit"],
    input[type="reset"] {
        width: 48%;
        font-size: 1.1rem;
        font-weight: bold;
        cursor: pointer;
        border: none;
        border-radius: 5px;
        transition: transform 0.3s ease;
    }

    /* Submit Button Color */
    input[type="submit"] {
        background-color: #003366;
        color: #fff;
    }

    input[type="submit"]:hover {
        background-color: #002244;
        transform: translateY(-3px);
    }

    /* Reset Button Styling */
    input[type="reset"] {
        background-color: #f0ad4e;
        color: #fff;
    }

    input[type="reset"]:hover {
        background-color: #ec971f;
        transform: translateY(-3px);
    }

    /* Footer Styling */
    footer {
        width: 100%;
        text-align: center;
        position: absolute;
        bottom: 10px; /* Reduced space from bottom */
        color: #666;
        font-size: 0.8rem; /* Adjusted font size */
        padding: 5px 0; /* Reduced padding */
    }

</style>
</head>
<body>

    <div class="container">
        <h1>Vehicle Management System</h1>
        <p class="description">
            Welcome to the vehicle management system. Please add a new vehicle below by entering its details in the form.
        </p>

        <div class="form-title">Add Vehicle Details</div>
        
        <form action="add-vehicle" method="post">
            <input type="text" name="model" placeholder="Enter Vehicle Model" required>
            <input type="text" name="manufacturer" placeholder="Enter Vehicle Manufacturer" required>
            <input type="text" name="color" placeholder="Enter Vehicle Color" required>
            <input type="text" name="engineType" placeholder="Enter Vehicle Engine Type" required>
            <input type="number" name="cost" placeholder="Enter Vehicle Cost" required min="0">

            <div class="form-buttons">
                <input type="submit" value="Add Vehicle">
                <input type="reset" value="Reset Form">
            </div>
        </form>
    </div>

    <footer>
        &copy; 2024 Vehicle Management System. All rights reserved.
    </footer>

</body>
</html>
