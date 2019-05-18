<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "com.tian.dto.User" %>
 <%@ page import = "com.tian.dto.UserDAO" %>
  <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class = "com.tian.dto.User"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	
	<%
		String name = request.getParameter("userName");
		String pw = request.getParameter("password");
		UserDAO useD = new UserDAO();
	%>
	<%--  测试是否成功连接数据库
		<%
			if(useD.conn != null){
				out.println("连接成功-数据库");
			}else{
				out.println("连接失败-数据库");
			}
			
		%> 
	--%>
	<br><br>
	<%-- 测试是否能成功从数据库中获取数据
		<%
			Statement stmt = useD.conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from student");
			while(rs.next()){
				out.println(rs.getString(1)+ "<br>" + rs.getString(2));
			}
		%> 
	--%>
	
 	 <% if(useD.isLoginIn(name, pw) == true){ %>
		<jsp:forward page="/login_success.jsp"></jsp:forward>		
	<% } else {%>	
		<jsp:forward page="/login_failure.jsp"></jsp:forward>
	<% } %> 
	
	
</body>
</html>






