<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%-- <%@page import="com.iplus.model.*;" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


 
<%
	  session = request.getSession();

	com.iplus.model.User user = (com.iplus.model.User) request.getAttribute("user");
	if(user != null){
		session.setAttribute("user", user);
	}
	
	response.sendRedirect("./");  
	  
%>