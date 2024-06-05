<%-- 
    Document   : registerTraining
    Created on : 8 May 2024, 3:56:04 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Training Registration</title>
    </head>
    <body>
        <h1>Register IT Training</h1>

        <form action="processTraining.jsp">
            <fieldset>
                <legend><b>Training Registration</b></legend>
                <table>
                    <tbody>
                        <tr>
                            <td><label for="icNo">IC No</label></td>
                            <td><input type="text" name="icNo" id="icNo" placeholder="E.g. 911210-05-1234"></td>
                        </tr>
                        <tr>
                            <td><label for="name">Name</label></td>
                            <td><input type="text" name="name" id="name" placeholder="Enter your name"></td>
                        </tr>
                        <tr>
                            <td><label for="trainingType">Type of Training</label></td>
                            <td>
                                <select name="trainingType" id="trainingType">
                                    <option value="1">C++ Training</option>
                                    <option value="2">Java for Beginner</option>
                                    <option value="3">HTML5</option>
                                    <option value="4">Java EEE</option>
                                    <option value="5">Android Programming</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="paxNo">No of Pax</label></td>
                            <td><input type="number" name="paxNo" id="paxNo" placeholder="No of pax" min="0"></td>
                        </tr>
                        <tr>
                            <td><label>Student</label></td>
                            <td>
                                <input type="radio" name="isStudent" id="yes" value="1">
                                <label for="yes">Yes</label>
                                <input type="radio" name="isStudent" id="no" value="0" checked="checked">
                                <label for="no">No</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br>
                                <button type="submit">Submit</button>
                                <button type="reset">Cancel</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
        </form>
    </body>
</html>