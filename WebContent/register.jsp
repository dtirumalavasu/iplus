<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="sp" uri="http://www.springframework.org/tags" %>

<%@ include file="header.jsp" %>
	<% 
		User us = (User)session.getAttribute("user");
		if(us == null){
	%>
	<a href="./register.html?locale=en" >English</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="./register.html?locale=fr" >French</a>
	<div style="height:100px;width:390;float:left;;
	margin-left:80px;font-size:16px">
	<p style="margin-top:50px;margin-left:15PX;margin-right:15px;color:black" align="center">REGISTER PAGE</p>
	
	<form  name="login" method="post" action="register.html" 
	style="text-align:center;color:black" onsubmit="return validate()">
	 
	   
	<table border="0" align="center" cellpadding="10">
	
		
		<tr style="font-size:16px;color:black"> 
		
		<td><sp:message code="registerPage.firstName"/></td> <td><input type="text" name="firstName"></td>&nbsp;
		<td><sp:message code="registerPage.middleName"/></td><td><input type="text" name="middleName"></td>&nbsp;
		<td><sp:message code="registerPage.lastName"/></td><td><input type="text" name="lastName"></td>
		<tr style="font-size:16px;color:black"> 
		<td><sp:message code="registerPage.userName"/></td> <td><input type="text" name="userName" ></td>
		<tr style="font-size:16px;color:black"> 
		<td><sp:message code="registerPage.password"/></td><td><input type="password" name="password" ></td>
		<tr style="font-size:16px;color:black"> 
		<td><sp:message code="registerPage.conformpassword"/></td><td><input type="password" name="conformpassword" ></td>
		<tr style="font-size:16px;color:black"> 
		<td><sp:message code="registerPage.email"/></td><td><input type="text" name="email" ></td>
		<tr style="font-size:16px;color:black"> 
		<td><sp:message code="registerPage.mobileNo"/></td><td><input type="text" name="mobileNo" ></td>
		<tr style="font-size:16px;color:black"> 
		<td><sp:message code="registerPage.city"/></td><td><input type="text" name="city" ></td>
		<tr style="font-size:16px;color:black"> 
		<td><sp:message code="registerPage.state"/></td><td><input type="text" name="state" ></td>
		<tr style="font-size:16px;color:black"> 
		<td><sp:message code="registerPage.country"/></td> <td><input type="text" name="country" ></td>
		<tr style="font-size:16px;color:black"> 
		<td><sp:message code="registerPage.zipCode"/></td><td><input type="text" name="zipCode" ></td>
		<tr style="font-size:16px;color:black"> 
		<td><sp:message code="registerPage.gender"/></td> <td><input type="radio" name="gender" value="male">M<input type="radio" name="gender" value="female">F</td></tr>
		
		
	
	</table>
	<tr style="font-size:16px;color:black"> 
	<input type="submit" style="font-size:14px;color:black" value=<sp:message code="register.registerButton"/> > 
	</form>
	${msg}
	</div>
	<%
			//out.println("<h1>------session expired.....---------</h1>"+us);
		}else{
			 out.println("----------"+request.getSession().getCreationTime());
			 out.println("----------"+request.getSession().getMaxInactiveInterval());
			 out.println("----------"+request.getSession().getId());
			 out.println("----------"+request.getSession().getLastAccessedTime());

			out.println("<h1>------session valid.....---------</h1>"+us);
			
			//response.sendRedirect("./");
		}
	%>
<%@ include file="footer.jsp" %>
