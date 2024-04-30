    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>Contact</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <br><br>
    <div class="container"><a href="admin_panel.php" class="btn btn-primary">Go Back</a></div><br><br>
    <div class="container">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>Name</th>
                    <th>Message</th>

                </tr>
            </thead>
            <tbody>
                            
            <c:forEach var="contact" items="${listContact}">
                    <tr>
                        <td><c:out value="${contact.id}" /></td>
                        <td><c:out value="${contact.name}" /></td>
                        <td><c:out value="${contact.email}" /></td>
                        <td><c:out value="${contact.message}" /></td>
                    </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
