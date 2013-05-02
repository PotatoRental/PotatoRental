<%--
  User: Milky
  Date: 4/22/13
  Time: 12:50 AM
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>
<head>
    <title>Sign up</title>
    <script type="text/javascript" src="<c:url value="/resources/jquery-2.0.0.js" />"></script>
</head>
<body>

<p>Is: ${message}</p>
<fieldset>
    <form:form modelAttribute="signupForm" cssClass="table" id="table">
        <form:label path="firstName">
            First Name <form:errors path="firstName" cssClass="error"/>
        </form:label>
        <form:input path="firstName" />
        </br>

        <form:label path="lastName">
            Last Name <form:errors path="lastName" cssClass="error"/>
        </form:label>
        <form:input path="lastName" />
        </br>

        <form:label path="address">
            Address <form:errors path="address" cssClass="error"/>
        </form:label>
        <form:input path="address"/>
        </br>

        <form:label path="zipCode">
            ZipCode <form:errors path="zipCode" cssClass="error" />
        </form:label>
        <form:input path="zipCode" />
        </br>

        <form:label path="telephone">
            Telephone <form:errors path="telephone" cssClass="error"/>
        </form:label>
        <form:input path="telephone" />
        </br>

        <form:label path="ssn">
            Social Security Number <form:errors path="ssn" cssClass="error"/>
        </form:label>
        <form:input path="ssn" />
        </br>

        <form:label path="email">
            Email <form:errors path="email" cssClass="error"/>
        </form:label>
        <form:input path="email" />
        </br>

        <button type="submit" >Submit</button>
    </form:form>
</fieldset>
</body>
</html>