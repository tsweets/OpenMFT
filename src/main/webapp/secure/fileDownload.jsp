<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include flush="false" page="../header.jsp"></jsp:include>


<form:form>
		<c:forEach items="${files}" var="file">
			<form:radiobutton path="fileName" value="${file}"/><c:out value="${file}"/><br>
		</c:forEach>

		<br>
 		<input type="submit" value="Download File" /><h4>&nbsp; Or Click <a href="userHome.jsp">here</a> to return to the home page. </h4>

</form:form>


<jsp:include flush="false" page="../footer.jsp"></jsp:include>