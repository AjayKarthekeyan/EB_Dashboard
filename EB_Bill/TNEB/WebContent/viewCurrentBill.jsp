<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Outstanding Bill</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 800px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }
    h2, h3 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }
    .details {
        margin-bottom: 30px;
    }
    .details h3 {
        margin-bottom: 15px;
    }
    .details p {
        display: flex;
        justify-content: center;
        margin: 5px 0;
        padding: 10px 20px;
        background-color: #f9f9f9;
        border-radius: 5px;
    }
    .details p span {
        display: inline-block;
        min-width: 20px;
        text-align: left;
    }
    .highlight {
        font-weight: bold;
        color: #ff6347;
    }
    .button-container {
        text-align: center;
        margin-top: 20px;
    }
    .button {
        display: inline-block;
        padding: 10px 20px;
        margin: 10px;
        font-size: 16px;
        color: #fff;
        background-color: #007BFF;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .button:hover {
        background-color: #0056b3;
    }
    .error {
        color: red;
        text-align: center;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Payment Due Section</h2>
    <%
        String ebid = (String) session.getAttribute("ebid");
        double totalOutstanding = 0.0;
        String customerDetails = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eb", "root", "");
            String query = "SELECT e.C_name, e.C_mobno, e.C_Addr, e.C_state, e.C_district, e.C_location, e.C_pin, e.C_type, t.EbAmt " +
                    "FROM EB_UserDetails e " +
                    "JOIN EbTransaction t ON e.Ebid = t.Ebid " +
                    "WHERE e.Ebid = ? AND t.status = 'UnPaid'";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, ebid);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                totalOutstanding += rs.getDouble("EbAmt");
                customerDetails = "<p><span><strong>Name:</strong></span> " + rs.getString("C_name") + "</p>" +
                        "<p><span><strong>Mobile:</strong></span> " + rs.getString("C_mobno") + "</p>" +
                        "<p><span><strong>Address:</strong></span> " + rs.getString("C_Addr") + "</p>" +
                        "<p><span><strong>State:</strong></span> " + rs.getString("C_state") + "</p>" +
                        "<p><span><strong>District:</strong></span> " + rs.getString("C_district") + "</p>" +
                        "<p><span><strong>Location:</strong></span> " + rs.getString("C_location") + "</p>" +
                        "<p><span><strong>Pin:</strong></span> " + rs.getString("C_pin") + "</p>" +
                        "<p><span><strong>Type:</strong></span> " + rs.getString("C_type") + "</p>";
            }

            rs.close();
            pst.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p class='error'>Error: " + e.getMessage() + "</p>");
        }
    %>
    <div class="details">
        <h3>Customer Details</h3>
        <%= customerDetails %>
    </div>
    <div class="details">
        <h3>Current Outstanding Amount</h3>
        <p class="highlight"><%= totalOutstanding %></p>
    </div>
    <div class="button-container">
        <a href="dashboard.jsp" class="button">Back to Dashboard</a>
        <a href="logout.jsp" class="button">Logout</a>
    </div>
</div>
</body>
</html>
