<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
		#loginT{
			font-family: Courier;
			font-size: 20px;
			font-weight: bold;
		}

		#loginT tr td input{
			background-color: #DEF;
		}
		.table{
			algin:center;
		}
	</style>
</head>

<body>
	<form id = "form1" method="post" action="doLogin.jsp">
		<table id = "loginT">
			<tr>
				<td>USERNAME:</td>
				<td><input name = "userName" type = "text" id = "userName" /></td>
			</tr>
			<tr>
				<td>PASSWORD: </td>
				<td><input name = "password" type = "password" id = "userName"/></td>
			</tr>
			<tr>
				<td><input type = "submit" value="login in" /></td>
				<td><input type = "reset" value="reset"/></td>
			</tr>
		</table>	
	</form>
	
</body>
</html>


