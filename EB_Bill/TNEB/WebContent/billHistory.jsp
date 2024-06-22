<%@ page import="java.sql.*"%>
<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Previous Transactions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .paid {
            background-color: #d4edda;
            color: #155724;
        }
        .unpaid {
            background-color: #f8d7da;
            color: #721c24;
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
    </style>
</head>
<body>
    <div class="container">
        <h1>Previous Transactions</h1>
        <table>
            <thead>
                <tr>
                    <th>Transaction ID</th>
                    <th>Month</th>
                    <th>Year</th>
                    <th>Units</th>
                    <th>Amount</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String ebid = (String) session.getAttribute("ebid");

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eb", "root", "");
                        String query = "SELECT t.EbTransId, t.Trans_mon, t.Trans_yr, t.EbUnit, t.EbAmt, t.status " +
                                       "FROM EB_UserDetails u " +
                                       "JOIN EbTransaction t ON u.Ebid = t.Ebid " +
                                       "WHERE u.Ebid = ?";
                        PreparedStatement pst = con.prepareStatement(query);
                        pst.setString(1, ebid);
                        ResultSet rs = pst.executeQuery();

                        while (rs.next()) {
                            String statusClass = rs.getString("status").equals("Paid") ? "paid" : "unpaid";
                            out.println("<tr class='" + statusClass + "'>");
                            out.println("<td>" + rs.getInt("EbTransId") + "</td>");
                            out.println("<td>" + rs.getString("Trans_mon") + "</td>");
                            out.println("<td>" + rs.getString("Trans_yr") + "</td>");
                            out.println("<td>" + rs.getInt("EbUnit") + "</td>");
                            out.println("<td>" + rs.getDouble("EbAmt") + "</td>");
                            out.println("<td>" + rs.getString("status") + "</td>");
                            out.println("</tr>");
                        }

                        rs.close();
                        pst.close();
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("Error: " + e.getMessage());
                    }
                %>
            </tbody>
        </table>
        <div class="button-container">
            <a href="dashboard.jsp" class="button">Back to Dashboard</a>
            <a href="logout.jsp" class="button">Logout</a>
        </div>
    </div>
</body>
</html>
