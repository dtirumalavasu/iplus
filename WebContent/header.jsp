<%@ page import="com.iplus.model.User " %>
<body style="margin: 0;">
<div class="header">
	<table  ><tr>
	<td><a href="index.jsp">Home</a></td>
	<td><a href="viewAllUsers.html">viewAll Users</a></td>
	<td><a href="search.jsp">EditUser</a></td>
	<%
		User user = (User)session.getAttribute("user");
		if(user != null){
			%>
			<td><a href="logout.jsp">Logout</a></td>
			<td>Welcome: ${user.userName}</td>
			
			<%
		}else{
			%>
			<td><a href="login.html">Login</a></td>
			<td><a href="register.html">Register</a></td>
			<%
		}
	
	%>
	
	
	</tr></table>
	
</div>
<style>
.header{
	height: 80px;
	background-color: #37474F;
}
.header table{
    text-decoration: none;
    color: #fff;
    padding: 13px;
    font-size: 14px;
    font-family: candara, sans-serif;
    float: right;
    margin-right: 15%;
}
.header a{
    text-decoration: none;
    color: #fff;
    padding: 10px;
    cursor: pointer;
}


</style>
