<%@ page import = "java.sql.*" %>
<%
String names = request.getParameter("names");
String phno = request.getParameter("Phno");
String add = request.getParameter("addr");
String state = request.getParameter("state");
String district = request.getParameter("dist");
String locality = request.getParameter("loc");
String pincode = request.getParameter("pin");
String pwd = request.getParameter("pass");
String ctype = request.getParameter("type");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eb","root","");
Statement st = con.createStatement();
String sql = "INSERT INTO EB_UserDetails (pass, C_name, C_mobno, C_Addr, C_state,C_district,C_location,C_pin,C_type) VALUES ('"+pwd+"','"+names+"','"+phno+"','"+add+"','"+state+"','"+district+"','"+locality+"','"+pincode+"','"+ctype+"')";
PreparedStatement pst = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
int i = pst.executeUpdate();
if(i>0)
{
	ResultSet rs = pst.getGeneratedKeys();
	if (rs.next()) {
        int ebid = rs.getInt(1);
        // Redirect to a new page and display the ebid
        response.sendRedirect("DisplayEBID.jsp?ebid=" + ebid);
    }
}
else{
	response.sendRedirect("RegisterUser.jsp");
}
%>