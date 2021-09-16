<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title>Katchaka</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<h1>Interets</h1>
<form action="interets" method="get">
        <ul>
                <c:forEach items="${interets}" var="interet">
                        <li>${interet.nom}</li>
                </c:forEach>
        </ul>
</form>
<a href="interet">Ajouter une Interet</a>

</body>
</html>