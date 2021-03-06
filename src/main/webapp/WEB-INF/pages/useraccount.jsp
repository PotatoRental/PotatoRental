<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/6/13
  Time: 3:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>

    <jsp:include page="head.jsp"/>
    <title>User Account</title>
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp"/>
    <div id="moviepagebody">
        <div class="content">
            <c:if test="${not empty message} ">
                <div class="error">
                        ${message}
                </div>
            </c:if>
            <span class="header1">Account information: <c:out value="${userid}" escapeXml="true"/></span>
            <hr>

            <form:form modelAttribute="editForm" cssClass="form-signup" action="/users/${userid}" method="post">
                <form:input path="firstName" cssErrorClass="error" id="name" type="text" value="${customer.firstName}"/>
                <form:input path="lastName" cssErrorClass="error" id="name" type="text" value="${customer.lastName}"/>
                <form:input path="address" cssErrorClass="error" type="text" value="${customer.address}"/>
                <form:input path="zipCode" cssErrorClass="error" type="text" value="${customer.zipCode}"/>
                <form:input path="telephone" cssErrorClass="error" type="text" value="${customer.telephone}"/>
                <form:input path="ssn" cssErrorClass="error" type="text" value="${customer.ssn}"/>
                <form:password path="pass" cssErrorClass="error" value="${customer.pass}"/>

                <form:button type="submit">Submit</form:button>
                <form:button type="submit" name="delete">DELETE</form:button>
            </form:form>
        </div>
    </div>
    <div id="moviepagebody">
        <div class="content">
            <span class="header1">Suggestion</span>
            <hr>
            <table id="planlist">
                <tr>
                    <th id="orderhistory">#</th>
                    <th id="orderhistory">Name</th>
                    <th id="orderhistory">Genre</th>
                    <th>Rating</th>
                </tr>
                <c:forEach var="movie" items="${suggestion}" varStatus="status">
                    <tr>
                        <td>${status.count}</td>
                        <td>
                            <a href="/movies/${movie.id}">${movie.name}</a>
                        </td>
                        <td>${movie.type}</td>
                        <td>${movie.rating}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

</body>
</html>