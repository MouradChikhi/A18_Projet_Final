<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 4/5/2025
  Time: 4:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>mon test servlet home
</h1>
<br/>
<h2>${message}</h2>
<table border="1">
    <tr>
        <td>Nom</td>
        <td>Prenom</td>
        <td>E-mail</td>
        <td>Specialite</td>
    </tr>
    <c:if test="${empty etudiants}">
        <p>Aucun étudiant disponible.</p>
    </c:if>
    <c:if test="${not empty etudiants}">
        <table>
            <tr>
                <td>Nom</td>
                <td>Prenom</td>
                <td>E-mail</td>
                <td>Specialite</td>
            </tr>
            <c:forEach var="etudiant" items="${etudiants}">
                <tr>
                    <td>${etudiant.nom}</td>
                    <td>${etudiant.prenom}</td>
                    <td>${etudiant.email}</td>
                    <td>${etudiant.specialite}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</table>
<br/>
</body>
</html>