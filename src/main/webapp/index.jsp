<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Etudiants</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>

<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h1 class="text-center">Liste d'etudiants</h1>
        </div>
        <div class="card-body">
            <table class="table table-striped table-bordered">
                <thead>
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>E-mail</th>
                    <th>Spécialité</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${empty etudiants}">
                    <tr>
                        <td colspan="4" class="text-center">Aucun étudiant disponible.</td>
                    </tr>
                </c:if>
                <c:if test="${not empty etudiants}">
                    <c:forEach var="etudiant" items="${etudiants}">
                        <tr>
                            <td>${etudiant.nom}</td>
                            <td>${etudiant.prenom}</td>
                            <td>${etudiant.email}</td>
                            <td>${etudiant.specialite}</td>
                        </tr>
                    </c:forEach>
                </c:if>
                </tbody>
            </table>
        </div>
        <div class="text-end pe-3 pb-3">
            <form action="HomeServlet" method="post">
                <input type="hidden" name="action" value="ajouter">
                <button type="submit" class="btn btn-primary">Ajouter un étudiant</button>
            </form>
        </div>
    </div>


</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</body>
</html>
