<center><%@ include file="header.jsp" %></center>
<br><br><br>
 
<form method="post" action="updateUser.html"  >
 
	<table border="0" align="center" cellpadding="10">
	
	<tr style="font-size:16px;color:black">
	<td>Firstname:</td><td><input type="text" name="firstName" value=${user.firstName}></td>&nbsp
	<td>Middlename:</td><td><input type="text" name="middleName"  value=${user.middleName}></td>&nbsp
	<td>Lastname:</td><td><input type="text" name="lastName"  value=${user.lastName}></td></tr>
		<td>Username :</td> <td><input type="text" name="userName"   value=${user.userName} readonly></td>
		<tr style="font-size:16px;color:black; display:none; ">
		<td>Password :</td><td><input type="password" name="password"   value=${user.password} readonly></td>
		<tr style="font-size:16px;color:black; display:none; ">
		<td>ConformPassword :</td><td><input type="password" name="conformpassword" ></td>
		<tr><td>Email :</td> <td><input type="text" name="email"   value=${user.email} readonly></td></tr>
		<tr><td>Mobileno :</td> <td><input type="text" name="mobileNo"   value=${user.mobileNo}></td></tr>
		<tr><td>City :</td> <td><input type="text" name="city"   value=${user.city}></td></tr>
		<tr><td>State :</td> <td><input type="text" name="state"   value=${user.state}></td></tr>
		<tr><td>Country :</td> <td><input type="text" name="country"   value=${user.country}></td></tr>
		<tr><td>Zipcode :</td> <td><input type="text" name="zipCode"   value=${user.zipCode}></td></tr>
		<tr><td>Gender:</td> <td>
				<input type="radio" name="gender" value="male" checked>M
				<input type="radio" name="gender" value="female">F</td>
		</tr>
		
	
	</table>
	<input type="submit" style="font-size:14px;color:black" value="Submit" >

</form>

${msg}
<hr>
	 