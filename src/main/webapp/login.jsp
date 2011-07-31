

<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include flush="false" page="header.jsp"></jsp:include>
<h2>Welcome to the Open Managed File Transfer Server</h2>

<div align="center"> <!-- Begin Login Form -->
<div id="loginBox" align="center"> 
<form:form >
    <table align="center">
        <tr>
            <td>User Name:</td>
            <td><form:input path="username" /></td>
        </tr>
        <tr>
        <tr class="error" align="center"><td colspan="2"><form:errors path="username" /></td></tr>
            <td>Passsword:</td>
            <td><form:password path="password" /></td>
        </tr>
        <tr class="error" align="center"><td colspan="2"><form:errors path="password" /></td></tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="Login" />
            </td>
        </tr>
    </table>
</form:form>
</div> 
</div><!--  End Login Form -->

 <jsp:include flush="false" page="footer.jsp"></jsp:include>