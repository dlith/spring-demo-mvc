<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student confirm form</title>
</head>
<body>

The student is confirmed: ${student.firstName} ${student.lastName}
<br><br>
Country: ${student.country}
<br><br>
Favorite Language: ${student.favoriteLanguage}
<br><br>
Operating Systems:
<ul>
    <c:forEach var="itemOpSystem" items="${student.operatingSystems}">
        <li>${itemOpSystem}</li>
    </c:forEach>
</ul>

</body>
</html>