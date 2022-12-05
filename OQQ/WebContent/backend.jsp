<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<html>	
<%	
try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/anawarul","root","Haque12@");
			PreparedStatement ps=cn.prepareStatement("insert into registration values(?,?,?,?)");
			  ps.setString(1,request.getParameter("number"));
			  ps.setString(2,request.getParameter("name"));
			  ps.setString(3,request.getParameter("email"));
			  ps.setString(4,request.getParameter("password"));
			  ps.executeUpdate();
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	

 %> 
  <jsp:include page="messages.jsp" /> 
 </html>
