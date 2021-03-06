<%--
  Created by IntelliJ IDEA.
  User: Milky, Monika
  Date: 5/8/13
  Time: 7:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <jsp:include page="head.jsp"/>
        <title>View Sales Report</title>
    </head>
    <body>
        <div id="wrap">
            <jsp:include page="header.jsp"/>
            <div id="moviepagebody">

                <div class="content">
                    
                        <span class="header1">Sales Report</span>
                        <hr>
                    <table>
                        <c:forEach var="sale" items="${sales}">
                            <tr>
                                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${sale.key}" /></td>
                                <td>${sale.value}</td>
                            </tr>
                        </c:forEach>
                    </table>
            </div>
        </div>


    </div>


</body>
</html>
