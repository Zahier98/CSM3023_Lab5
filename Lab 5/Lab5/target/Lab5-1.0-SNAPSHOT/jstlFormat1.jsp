<%-- 
    Document   : jstlFormat1
    Created on : 11 May 2024, 5:00:51 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Formatting Tag</title>
    </head>
    <body>
        <h1>Using JSTL Formatting Tag for Formatting</h1>
        
        <c:set var="total" value="2880.4638" />
        <p>Number to be formatted is <c:out value="${total}" /></p>
        <p>Formatting number as currency with currency code: <fmt:formatNumber type="currency" currencyCode="MYR" value="${total}" /></p>
        <p>Formatting number to the nearest 2 integer digit: <fmt:formatNumber type="number" maxIntegerDigits="2" value="${total}" /></p>
        <p>Formatting number by grouping: <fmt:formatNumber type="number" groupingUsed="true" value="${total}" /></p>
        <p>Formatting number to the 3 decimal places: <fmt:formatNumber type="number" groupingUsed="false" maxFractionDigits="3" value="${total}" /></p>
        <p>Formatting number to percentage: <fmt:formatNumber type="percent" groupingUsed="false" value="${total}" /></p>
    </body>
</html>