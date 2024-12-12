<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle Dashboard</title>
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
        width: 90%;
        max-width: 600px;
        background: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    /* Header Styling */
    h1 {
        font-size: 2.2rem;
        color: #003366;
        margin-bottom: 15px;
    }

    p {
        font-size: 1rem;
        color: #666;
        margin-bottom: 30px;
    }

    /* Button Link Styling */
    .btn-container {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    a {
        text-decoration: none;
        color: #003366;
        font-size: 1.1rem;
        padding: 12px 20px;
        border: 2px solid #003366;
        border-radius: 5px;
        transition: all 0.3s ease;
    }

    a:hover {
        background-color: #003366;
        color: #fff;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    }

    /* Footer Styling */
    footer {
        margin-top: 20px;
        color: #999;
        font-size: 0.9rem;
    }

</style>
</head>
<body>

    <div class="container">
        <h1>Welcome to Your Vehicle Dashboard</h1>
        <p>Manage all your vehicle details efficiently from this dashboard. Use the options below to add or view details about your vehicles.</p>
        
        <div class="btn-container">
            <a href="AddVehicleInfo.jsp">Add Vehicle Details</a>
            <a href="display-all-vehicle">Manage Vehicle</a>
        </div>
    </div>

    <footer>
        &copy; 2024 Vehicle Management System. All rights reserved.
    </footer>

</body>
</html>
