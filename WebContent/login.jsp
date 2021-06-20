<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="header.jsp" %>
<%@taglib prefix="sp" uri="http://www.springframework.org/tags" %>

	<% 
		User us = null; 
		us = (User)session.getAttribute("user");
		if(us == null){
	%>
			 
	<a href="./login.html?locale=en" >English</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="./login.html?locale=fr" >French</a>
	
	<div style="height:100px;width:390;float:left;;
	margin-left:80px;font-size:16px">
	<p style="margin-top:50px;margin-left:15PX;margin-right:15px;color:black" align="center">LOGIN PAGE</p>
	
		<form  name="login" method="post" action="login.html" 
		style="text-align:center;color:black" onsubmit="return validate()">
		 
		   
			<table border="0" align="center" cellpadding="10">
			
			<tr style="font-size:16px;color:black">
			<td><sp:message code="loginPage.userName"/></td> <td><input type="text" name="userName" ></td>
			<tr style="font-size:16px;color:black">
			<td><sp:message code="loginPage.password"/></td><td><input type="password" name="password" ></td>
			</table>
			<input type="submit" style="font-size:14px;color:black" value=<sp:message code="loginPage.loginButton"/> >
			${msg}
		</form>
	</div>

	<%
		}else{
			response.sendRedirect("./");
		}
	%>

</div>
<%@ include file="footer.jsp" %>
