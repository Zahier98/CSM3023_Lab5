<%-- 
    Document   : processTraining
    Created on : 8 May 2024, 3:56:50 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.lab5.Register" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Training Registration</title>
        <style>
            p {
                font-size: 2rem;
                color: purple;
            }
        </style>
    </head>
    <body>
        <h1>Training Registration Acknowledgement</h1>
        
        <%
            String icNo, name;
            int trainingType, paxNo, isStudent;
            
            String trainingTypeStr, isStudentStr;
            int fees;
            
            icNo = request.getParameter("icNo");
            name = request.getParameter("name");
            trainingType = Integer.parseInt(request.getParameter("trainingType"));
            paxNo = Integer.parseInt(request.getParameter("paxNo"));
            isStudent = Integer.parseInt(request.getParameter("isStudent"));
            
            Register register = new Register(icNo, name, trainingType, paxNo, isStudent);
        %>
        
        <p>IC No : <%= register.getIcNo() %></p>
        <p>Name : <%= register.getName() %></p>
        <p>Type of Training : <%= register.getTrainingTypeStr() %></p>
        <p>Number of Pax : <%= register.getPaxNo() %> person/s</p>
        <p>Student : <%= register.getIsStudentStr() %></p>
        <p>Amount Due : RM <%= String.format("%.2f", register.getAmount()) %></p>
    </body>
</html>