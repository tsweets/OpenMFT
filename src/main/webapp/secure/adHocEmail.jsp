<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include flush="false" page="../header.jsp"></jsp:include>

<form:form>
    <table>
        <tr>
            <td>To Name:</td>
            <td><form:input path="toName"/></td>
        </tr>
        <tr>
            <td>To Email:</td>
            <td><form:input path="toEmail"/></td>
        </tr>
        <tr>
            <td>From Name:</td>
            <td><form:input path="fromName"/></td>
        </tr>
        <tr>
            <td>From Email:</td>
            <td><form:input path="fromEmail"/></td>
        </tr>
        <tr>
            <td>Message:</td>
            <td><form:input path="message"/></td>
        </tr>
        <tr>
            <td><input type="file" name="file"/></td>
            <td><input type="submit" value="Upload and Send Email"/></td>
        </tr>

    </table>
	
</form:form>

<jsp:include flush="false" page="../footer.jsp"></jsp:include>