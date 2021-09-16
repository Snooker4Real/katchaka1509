<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title>Villes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<h1>Villes</h1>
<form action="villes" method="get">
<input type="text" name="FILTRE">
<input type="submit" value="Filter">
</form>
<ul>
<c:forEach items="${villes}" var="ville">
<li>${ville.nom}</li>
</c:forEach>
</ul>
<a href="ajouterVille">Ajouter une ville</a>

</body>
</html>