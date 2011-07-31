<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include flush="false" page="../header.jsp"></jsp:include>

        <h1>Please select a file to upload</h1>
        <h2>The maximum file that can be uploaded via this site is 50 Megabytes (50mb)</h2>
        <form method="post" action="fileUpload.htm" enctype="multipart/form-data">
            <input type="file" name="file"/>
            <input type="submit" value="Upload"/>
        </form>
        <h4>&nbsp; Or Click <a href="userHome.jsp">here</a> to return to the home page. </h4>
 
 <jsp:include flush="false" page="../footer.jsp"></jsp:include>