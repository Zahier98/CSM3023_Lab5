<%-- 
    Document   : Message1
    Created on : 8 May 2024, 3:50:52 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page info="Using JSP Standard Action to call JavaBeans" %>
<%@page import="java.util.Date, com.mycompany.lab5.Message" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Scriplet</title>
        <style>
            p {
                font-size: 2rem;
                color: purple;
            }
        </style>
    </head>
    <body>
        <h1>Using JSP Scriplet to call JavaBeans</h1>
        
        <%
            Message objMsg = new Message();
            
            objMsg.setMsg("Welcome to CSM3023 course!");
            
            out.println("<p>" + objMsg.getMsg() + "</p>");
            
            out.println("<p>Current date is " + new Date() + "</p>");
        %>
    </body>
</html>