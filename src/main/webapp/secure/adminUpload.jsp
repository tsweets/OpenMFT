<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include flush="false" page="../header.jsp"></jsp:include>

        <h1>Please select a file to upload</h1>
        <h2>The maximum file that can be uploaded via this site is 50 Megabytes (50mb)</h2>
        <form:form enctype="multipart/form-data">
      
      		Select a User Account to upload a file to:
        	<form:select path="userName" >
        	 	<form:option value="-" label="--Please Select"/>
            	<form:options items="${users}" itemValue="userName" itemLabel="name"/>
        	</form:select>
        	<br>
            <input type="file" name="file"/>
            <input type="submit" value="Upload"/>
        </form:form>
        <h4>&nbsp; Or Click <a href="userHome.jsp">here</a> to return to the home page. </h4>
 
 <jsp:include flush="false" page="../footer.jsp"></jsp:include>