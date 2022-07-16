<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="for" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student registration form</title>
</head>
<body>

    <form:form action="processForm" modelAttribute="student">
        First name: <form:input path="firstName"/>
        <br><br>
        Last name: <form:input path="lastName"/>
        <br><br>
        Country:
<%--        1. Hardcode way--%>
<%--        <form:select path="country">--%>
<%--            <form:option value="Brazil" lang="Brazil"/>--%>
<%--            <form:option value="France" lang="France"/>--%>
<%--            <form:option value="Germany" lang="Germany"/>--%>
<%--            <form:option value="India" lang="India"/>--%>
<%--        </form:select>--%>

<%--        2. Load from Map--%>
<%--        <form:select path="country">--%>
<%--            <form:options items="${student.countryOptions}"/>--%>
<%--        </form:select>--%>

<%--        3. Load from properties file--%>
        <form:select path="country">
            <form:options items="${theCountryOptions}" />
        </form:select>
        <br><br>
        <input type="submit" value="Submit">
    </form:form>

</body>
</html>