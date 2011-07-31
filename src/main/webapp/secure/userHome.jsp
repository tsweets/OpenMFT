<%@ page import="com.openmft.user.*" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include flush="false" page="../header.jsp"></jsp:include>
<%
    Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    String username = "Nobody";
    if (principal instanceof UserDetails) {
        username = ((UserDetails)principal).getUsername();
    } else {
        username = principal.toString();
    }
//User user = (User)session.getAttribute("user");
%>
<div>
<div id="userInfo">
    Hello <%= username %>
<%--
	Hello <b><%= user.getName() %></b><br>
	User Name: <%= user.getUserName() %><br>
	Password: ********* <br>
	Email: <%= user.getEmail() %>
--%>
</div>
<div id="userHome">
	<b>Navigation:</b><br>
	<div id="navLinks">
	<a class="navLink" href="fileUpload.htm">Upload a File</a><br>
	<a class="navLink" href="fileDownload.htm">Download Files</a><br>
	<a class="navLink" href="logout.htm">Logout</a><br>
	</div>
</div>
</div>

 <jsp:include flush="false" page="../footer.jsp"></jsp:include>