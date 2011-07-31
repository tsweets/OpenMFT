<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--
  ~ Copyright (c) Tony Sweets 2011.
  ~
  ~ This file is part of OpenMFT.
  ~
  ~ OpenMFT is free software: you can redistribute it and/or modify
  ~ it under the terms of the GNU General Public License as published by
  ~ the Free Software Foundation, either version 3 of the License, or
  ~ (at your option) any later version.
  ~
  ~ OpenMFT is distributed in the hope that it will be useful,
  ~ but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~ GNU General Public License for more details.
  ~
  ~ You should have received a copy of the GNU General Public License
  ~ along with OpenMFT.  If not, see <http://www.gnu.org/licenses/>.
  --%>

<!--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head><title>ePlan MFT Server</title></head>
<body>
<h1>ePlan Services</h1>
<p>Please Login</p>
</body>
</html>
-->
<%@ include file="/WEB-INF/jsp/include.jsp" %>


<%-- Redirected because we can't set the welcome page to a virtual URL. --%>
<c:redirect url="/login.htm"/>
