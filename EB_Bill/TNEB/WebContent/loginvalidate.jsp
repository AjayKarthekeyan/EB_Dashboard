<%@ page import="java.sql.*"%>
<%
	String userid = request.getParameter("uname");
	String pwd = request.getParameter("pass");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eb","root","");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from EB_UserDetails where Ebid='"+userid+"'and pass='"+pwd+"'");
	if(rs.next()){
		String cname = rs.getString("C_name");
        String ebid = rs.getString("Ebid");
        session.setAttribute("cname", cname);
        session.setAttribute("ebid", ebid);
        response.sendRedirect("dashboard.jsp");
	}
	else{
		out.println("Invalid password / username <a href='index.jsp'>try again</a>");
	}
%>