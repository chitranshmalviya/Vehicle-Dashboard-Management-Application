<%@ page import="com.jsp.spring.vehicle.entity.Vehicle"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle List</title>
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
        max-width: 1000px;
        background: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        text-align: center;
        overflow-x: auto;
    }

    /* Header Styling */
    h1 {
        font-size: 2.5rem;
        color: #003366;
        margin-bottom: 15px;
    }

    p {
        font-size: 1.1rem;
        color: #666;
        margin-bottom: 30px;
    }

    /* Table Styling */
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        font-size: 1rem;
        min-width: 800px;
    }

    th, td {
        padding: 12px 15px;
        border: 1px solid #ddd;
        text-align: center;
    }

    th {
        background-color: #003366;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #d1e7f7;
    }

    /* Button Link Styling */
    a {
        text-decoration: none;
        padding: 10px 20px; /* Increased padding for more width */
        border-radius: 5px;
        transition: all 0.3s ease;
        display: inline-block;
        min-width: 120px; /* Ensure button is wide */
        text-align: center;
    }

    /* Edit Button */
    .edit-btn {
        color: #fff;
        background-color: #4CAF50; /* Green for Edit */
        border: 2px solid #4CAF50;
    }

    .edit-btn:hover {
        background-color: #45a049;
    }

    /* Delete Button */
    .delete-btn {
        color: #fff;
        background-color: #f44336; /* Red for Delete */
        border: 2px solid #f44336;
    }

    .delete-btn:hover {
        background-color: #e53935;
    }

    /* Footer Styling */
    footer {
        margin-top: 30px;
        color: #999;
        font-size: 0.9rem;
    }

</style>
</head>
<body>

    <div class="container">
        <h1>Vehicle List</h1>
        <p>Here you can view, edit, or delete vehicle information. Manage your vehicle data efficiently with this dashboard.</p>
        
        <% List<Vehicle> vehicles = (List<Vehicle>) request.getAttribute("vehicle"); %>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Model</th>
                    <th>Manufacturer</th>
                    <th>Color</th>
                    <th>Engine Type</th>
                    <th>Cost</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <% for (Vehicle vehicle : vehicles) { %>
                <tr>
                    <td><%= vehicle.getId() %></td>
                    <td><%= vehicle.getModel() %></td>
                    <td><%= vehicle.getManufacturer() %></td>
                    <td><%= vehicle.getColor() %></td>
                    <td><%= vehicle.getEngineType() %></td>
                    <td><%= vehicle.getCost() %></td>
                    <td><a href="update-vehicle?vehicle_id=<%= vehicle.getId() %>" class="edit-btn">Edit</a></td>
                    <td><a href="delete-vehicle?vehicle_id=<%= vehicle.getId() %>" class="delete-btn">Delete</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <footer>
        &copy; 2024 Vehicle Management System. All rights reserved.
    </footer>

</body>
</html>
