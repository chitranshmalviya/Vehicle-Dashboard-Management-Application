<%@page import="com.jsp.spring.vehicle.entity.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Vehicle</title>
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
        width: 100%;
        max-width: 600px; /* Reduced width */
        background: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    /* Header and Description Styling */
    h1 {
        font-size: 2.2rem;
        color: #003366;
        margin-bottom: 20px;
    }

    .description {
        font-size: 1rem;
        color: #666;
        margin-bottom: 20px;
    }

    .form-title {
        font-size: 1.4rem;
        color: #333;
        margin-bottom: 20px;
        font-weight: bold;
    }

    /* Form Styling */
    form {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    input[type="text"],
    input[type="number"],
    input[type="submit"],
    input[type="reset"] {
        padding: 12px; 
        font-size: 1rem;
        margin: 10px 0;
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
        position: relative;
        bottom: 0;
        color: #666;
        font-size: 0.7rem; /* Smaller font size */
        margin-top: 20px; /* Added space from content */
        padding: 10px 0; /* Reduced padding */
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        body {
            padding: 10px;
        }

        .container {
            padding: 20px;
            max-width: 100%;
        }

        h1 {
            font-size: 1.8rem;
        }

        input[type="submit"], input[type="reset"] {
            width: 100%;
        }

        .form-buttons {
            flex-direction: column;
        }

        footer {
            font-size: 0.6rem; /* Further reduced font size on small screens */
            padding: 5px 0; /* Reduced padding */
        }
    }
</style>
</head>
<body>

    <div class="container">
        <h1>Update Vehicle Details</h1>
        
        <!-- The vehicle object is accessed here -->
        <% Vehicle vehicle = (Vehicle) request.getAttribute("vehicle"); %>

        <form action="update-vehicle" method="post">
            <input type="number" name="id" value="<%= vehicle.getId() %>" readonly="readonly">
            <input type="text" name="model" placeholder="Enter updated model" value="<%= vehicle.getModel() %>">
            <input type="text" name="manufacturer" placeholder="Enter updated manufacturer" value="<%= vehicle.getManufacturer() %>">
            <input type="text" name="color" placeholder="Enter updated color" value="<%= vehicle.getColor() %>">
            <input type="text" name="engineType" placeholder="Enter updated engine type" value="<%= vehicle.getEngineType() %>">
            <input type="number" name="cost" placeholder="Enter updated cost" value="<%= vehicle.getCost() %>">

            <div class="form-buttons">
                <input type="submit" value="Update Vehicle">
                <input type="reset" value="Reset Form">
            </div>
        </form>
    </div>

    <footer>
        &copy; 2024 Vehicle Management System. All rights reserved.
    </footer>

</body>
</html>
