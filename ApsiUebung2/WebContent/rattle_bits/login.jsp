<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>RattleBits</title>
<style>
.error {
	color: red;
}
</style>
</head>
<body>
<form method="POST" action='Login' name="login">
<ul class="error">
<%
	@SuppressWarnings("unchecked")
    List<String> messages = (List<String>)request.getAttribute("messages");
	Iterator<String> it = messages.iterator();
    while (it.hasNext()) {
%>
	<li><%= it.next() %></li>
<% } %>
</ul>
<table>
	<tr>
		<th>Username:</th>
		<td><input type="text" name="username" value="${param.username}"/></td>
	</tr>
	<tr>
		<th>Password:</th>
		<td><input type="password" name="password" value="${param.password}" /></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" name="login" value="Registrieren" /></td>
	</tr>
</table>
</form>
</body>
</html>