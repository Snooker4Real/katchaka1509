<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title>Personnes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<h1>Personnes</h1>

<ul>
        <!-- On parcourt le contenu de la page de personne -->
        <c:forEach items="${pageDePersonnes.content}" var="personne">
                <li>${personne.pseudo} (${personne.interets})
                        <c:forEach items="${personne.interets}" var="interet">
                                ${interet.nom}
                        </c:forEach>
                </li>
        </c:forEach>
</ul>

<!-- On test si la page de personnes est la première page -->
<c:if test="${!pageDePersonne.first}">
        <!-- Pas fini -->
        <a href="?page=0&sort=${pageDePersonne.sort.iterator().next().property},${pageDePersonnes.sort.iterator().next()} "></a>
        <a href="?page=${pageDePersonnes.number-1}&sort=${pageDePersonnes.sort.iterator().next().property},${pageDePersonnes.sort}"></a>
</c:if>

Page ${pageDePersonnes.number+1}

<!-- On teste si la page de personnes est la dernière page -->
<c:if test="${!pageDePersonnes.last}">
        <a href="?page=${pageDePersonnes.number+1}&sort=${pageDePersonnes.sort.iterator().next().property},${pageDePersonne.sort}"></a>
        <a href="?page=${pageDePersonnes.totalPages - 1}"&sort="${pageDePersonnes.sort.iterator().next().property}, ${pageDePersonne}"></a>
</c:if>

</body>
</html>