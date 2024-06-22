<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Price</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }
    h2 {
        color: #333;
        margin: 20px 0;
    }
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
        text-align: center;
    }
    table {
        width: 100%;
        margin-bottom: 20px;
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: center;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    tr:nth-child(odd) {
        background-color: #fff;
    }
    .section-title {
        font-weight: bold;
        margin: 10px 0;
    }
    .button-container {
        margin-top: 20px;
    }
    .button {
        display: inline-block;
        padding: 10px 20px;
        margin: 10px;
        font-size: 16px;
        color: #fff;
        background-color: #4CAF50;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>PRICE LIST ACCORDING TO THE SERVICE</h2>
        <table>
            <tr class="section-title">
                <td colspan="2">HOUSEHOLD PRICE ALLOCATION</td>
            </tr>
            <tr>
                <th>UNITS</th>
                <th>Rs. PER UNIT</th>
            </tr>
            <tr>
                <td>less than 100</td>
                <td>free per units</td>
            </tr>
            <tr>
                <td>more than 100</td>
                <td>5rs. per units</td>
            </tr>
            <tr>
                <td>less than 300</td>
                <td>10Rs. per units</td>
            </tr>
        </table>
        <table>
            <tr class="section-title">
                <td colspan="2">SHOP PRICE ALLOCATION</td>
            </tr>
            <tr>
                <th>UNITS</th>
                <th>Rs. PER UNIT</th>
            </tr>
            <tr>
                <td>less than 100</td>
                <td>5Rs. per units</td>
            </tr>
            <tr>
                <td>more than 100</td>
                <td>10rs. per units</td>
            </tr>
            <tr>
                <td>less than 300</td>
                <td>20Rs. per units</td>
            </tr>
        </table>
        <table>
            <tr class="section-title">
                <td colspan="2">FACTORY PRICE ALLOCATION</td>
            </tr>
            <tr>
                <th>UNITS</th>
                <th>Rs. PER UNIT</th>
            </tr>
            <tr>
                <td>less than 100</td>
                <td>10Rs. per units</td>
            </tr>
            <tr>
                <td>more than 100</td>
                <td>20rs. per units</td>
            </tr>
            <tr>
                <td>less than 300</td>
                <td>30Rs. per units</td>
            </tr>
        </table>
        <div class="button-container">
            <a href="dashboard.jsp" class="button">Back to Dashboard</a>
            <a href="logout.jsp" class="button">Logout</a>
        </div>
    </div>
</body>
</html>
