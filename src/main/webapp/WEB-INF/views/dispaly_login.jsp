<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>

<html xmlns:form="http://www.springframework.org/tags/form">

<body>
	<form action="${flowExecutionUrl}&_eventId=loginCredentialsEntered"
		method="post">

		<input type="hidden" name="_flowExecutionKey"
			value="${flowExecutionKey}" /> <br /> Enter login name as <b>alba</b>
		and password as <b>pass</b> for successful login. <br /> Use any
		other login name and password for login error. <br /> <br />
		<table>
			<tr>
				<td>Login Name:</td>
				<td><input type="text" name="loginName" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" name="password" /></td>
			</tr>
		</table>

		<br/> <input type="submit" value="Login" />

	</form>
</body>
</html>