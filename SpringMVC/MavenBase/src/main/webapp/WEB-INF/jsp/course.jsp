<%-- 
    Document   : course
    Created on : Feb 17, 2016, 10:27:40 AM
    Author     : Ohjelmistokehitys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h1>Add new course information</h1>
                    <form:form action="/admin/course" method="POST" modelAttribute="course">
                        <form:label path="">Name</form:label><br/>
                        <form:input class="form-control" path="CName"></form:input><br/>
                        <form:label path="">Grade</form:label><br/>
                        <form:input class="form-control" path="grade"></form:input><br/>
                        <form:label path="">Info</form:label><br/>
                        <form:input class="form-control" path="CInfo"></form:input><br/>
                        
                        <input class="btn btn-primary" type="submit" value="Save Course"/>
                    </form:form>
                    <p>${save_info}</p>
                </div>
    	        <div class="col-md-6">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Grade</th>
                                <th>Info</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cour" items="${courses}">
                                <tr>
                                    <td>${cour.getCName()}</td>
                                    <td>${cour.getGrade()}</td>
                                    <td>${cour.getCInfo()}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
