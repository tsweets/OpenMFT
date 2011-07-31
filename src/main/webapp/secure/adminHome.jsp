<%@ page import="com.openmft.user.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include flush="false" page="../header.jsp"></jsp:include>
<%
User user = (User)session.getAttribute("user");
%>
<div>
<div id="userInfo">
	Hello <b><%= user.getName() %></b><br>
	User Name: <%= user.getUserName() %><br>
	Password: ********* <br>
	Email: <%= user.getEmail() %>
</div>
<div id="userHome">
	<b>Navigation:</b><br>
	<div id="navLinks">
	<a class="navLink" href="adminUpload.htm">Upload a File to a User's Account</a><br>
    <a class="navLink" href="adHocEmail.htm">Ad-Hoc Email File Transfer</a><br>
	<a class="navLink" href="logout.htm">Logout</a><br>
	</div>
</div>
</div>

 <jsp:include flush="false" page="../footer.jsp"></jsp:include>