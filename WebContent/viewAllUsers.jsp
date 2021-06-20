
<center><%@ include file="header.jsp" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<h3>All Users</h3>
	
	<hr>
	<c:if test="${!empty users}">
 	  <c:forEach items="${users}" var="users"><br>
		     <c:out value="${users.userName}"/> <a href=editUser.html?username=${users.userName}>edit</a>
	  </c:forEach> 
	</c:if>