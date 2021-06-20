<center><%@ include file="header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<br><br><br>



<form method="post" action="search.html">
	<tr>
		<td><input type="text" name="username" value=${userSearch}></td>
		<td><input type="submit" value="search"></td>
	</tr>
</form>

	<c:if test="${!empty user}">
 	   ${user.userName} &nbsp;<a href=editUser.html?username=${user.userName}>edit.</a>
	</c:if>
	<h3 style="color:red;">${NOTFOUND}</h3>

