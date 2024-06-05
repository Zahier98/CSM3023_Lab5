<%-- 
    Document   : jstlCore1
    Created on : 11 May 2024, 4:20:41 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSTL Tag Library</title>
    </head>
    <body>
        <h1>Use JSTL's Features</h1>
        <c:set var="message" value="Welcome to CSM3023 - Web Programming courses..!" />
        <p><c:out value="${message}" /></p>
    </body>
</html>