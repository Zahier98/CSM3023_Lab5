<%-- 
    Document   : circle
    Created on : 11 May 2024, 10:42:30 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find area of a circle</title>
    </head>
    <body>
        <h1>Find area of a circle</h1>
        
        <form>
            <table>
                <tr>
                    <td><label>Radius</label></td>
                    <td><input type="number" name="radius" required></td>
                    <td><button type="submit">Calculate</button></td>
                </tr>
            </table>
        </form>
        
        <c:if test="${param.radius != null}" >
            <c:set var="radius" value="${param.radius}" />
            <c:set var="area" value="${Math.PI * radius * radius}" />
            <c:set var="perimeter" value="${2 * Math.PI * radius}" />
            
            <p>Radius: <c:out value="${radius}" /></p>
            <p>Area: <fmt:formatNumber type="number" groupingUsed="false" maxFractionDigits="3" value="${area}" /></p>
            <p>Perimeter: <fmt:formatNumber type="number" groupingUsed="false" maxFractionDigits="3" value="${perimeter}" /></p>
        </c:if>
    </body>
</html>