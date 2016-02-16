<%-- 
    Document   : student
    Created on : Feb 16, 2016, 1:53:41 PM
    Author     : Ohjelmistokehitys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h1>Add new student information</h1>
                    <form:form action="/admin/student" method="POST" modelAttribute="student">
                        <form:label path="">Name</form:label><br/>
                        <form:input class="form-control" path="SName"></form:input><br/>
                        <form:label path="">Address</form:label><br/>
                        <form:input class="form-control" path="address"></form:input><br/>
                        <form:label path="">Email</form:label><br/>
                        <form:input class="form-control" path="email"></form:input><br/>
                        <form:label path="">Phone</form:label><br/>
                        <form:input class="form-control" path="phone"></form:input><br/>

                        <input class="btn btn-primary" type="submit" value="Save Student"/>
                    </form:form>
                    <p>${save_info}</p>
                </div>
    	        <div class="col-md-6">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Email</th>
                                <th>Phone</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="stud" items="${students}">
                                <tr>
                                    <td>${stud.getSName()}</td>
                                    <td>${stud.getAddress()}</td>
                                    <td>${stud.getEmail()}</td>
                                    <td>${stud.getPhone()}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
