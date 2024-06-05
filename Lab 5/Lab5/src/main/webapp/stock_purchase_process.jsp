<%-- 
    Document   : stock_purchase_process
    Created on : 11 May 2024, 10:48:04 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stock Purchase Results</title>
    </head>
    <body>        
        <c:set var="shareNum" value="${param.shareNum}" />
        <c:set var="sharePrice" value="${param.sharePrice}" />
        <c:set var="comRate" value="${param.comRate}" />
        
        <jsp:useBean id="purchase" class="com.mycompany.lab5.StockPurchase">
            <jsp:setProperty name="purchase" property="numShares" value="${shareNum}" />
            <jsp:setProperty name="purchase" property="pricePerShare" value="${sharePrice}" />
            <jsp:setProperty name="purchase" property="commissionRate" value="${comRate / 100}" />
        </jsp:useBean>
        
        <h2>Stock Purchase Details</h2>
        <p>Number of Share: <c:out value="${purchase.getNumShares()}" /></p>
        <p>Price per Share: <fmt:formatNumber type="currency" currencySymbol="RM" groupingUsed="false" maxFractionDigits="2" value="${purchase.getPricePerShare()}" /></p>
        <p>Commission Rate: <fmt:formatNumber type="number" groupingUsed="false" maxFractionDigits="0" value="${purchase.getCommissionRateAsPercentage()}" />%</p>
        <br>
        
        <h2>Stock Purchase Results</h2>
        <p>Stock Cost: <fmt:formatNumber type="currency" currencySymbol="RM" groupingUsed="false" maxFractionDigits="2" value="${purchase.calculateStockCost()}" /></p>
        <p>Commission: <fmt:formatNumber type="currency" currencySymbol="RM" groupingUsed="false" maxFractionDigits="2" value="${purchase.calculateCommission()}" /></p>
        <p>Total Cost: <fmt:formatNumber type="currency" currencySymbol="RM" groupingUsed="false" maxFractionDigits="2" value="${purchase.calculateTotalCost()}" /></p>
    </body>
</html>