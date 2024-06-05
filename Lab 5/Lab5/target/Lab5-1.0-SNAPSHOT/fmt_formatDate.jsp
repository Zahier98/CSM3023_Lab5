<%-- 
    Document   : fmt_formatDate
    Created on : 11 May 2024, 10:32:52 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fmt:formatDate Example</title>
    </head>
    <body>
        <h2>fmt:formatDate Examples</h2>
        
        <c:set var="now" value="<%= new java.util.Date() %>" />
        <p>
            Time (fmt:formatDate type="time"):
            <strong>
                <fmt:formatDate type="time" value="${now}" />
            </strong>
        </p>
        <p>
            Date (fmt:formatDate type="date"):
            <strong>
                <fmt:formatDate type="date" value="${now}" />
            </strong>
        </p>
        <p>
            Date, Time (fmt:formatDate type="both"):
            <strong>
                <fmt:formatDate type="both" value="${now}" />
            </strong>
        </p>
        <p>
            Date, Time Short (fmt:formatDate type="both" dateStyle="short" timeStyle="short"):
            <strong>
                <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${now}" />
            </strong>
        </p>
        <p>
            Date, Time Medium (fmt:formatDate type="both" dateStyle="medium" timeStyle="medium"):
            <strong>
                <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${now}" />
            </strong>
        </p>
        <p>
            Date, Time Long (fmt:formatDate type="both" dateStyle="long" timeStyle="long"):
            <strong>
                <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}" />
            </strong>
        </p>
        <p>
            Date, Time (dd-MM-yyyy HH:mm:ss):
            <strong>
                <fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss" value="${now}" />
            </strong>
        </p>
        <fmt:formatDate pattern="dd-MM-yyyy HH:mm" value="${now}" var="nowString" />
        <p>
            Now String (dd-MM-yyyy HH:mm):
            <strong>
                <c:out value="${nowString}" />
            </strong>
        </p>
    </body>
</html>