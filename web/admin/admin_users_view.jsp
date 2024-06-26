    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>Users</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <br><br>
    <div class="container"><a href="../admin" class="btn btn-primary">Go Back</a></div><br><br>
    <div class="container">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>            
                    <th>Email</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>dob</th>

                </tr>
            </thead>
            <tbody>
                   <c:forEach var="customer" items="${listCustomer}">         
                    <tr>
                        <td><c:out value="${customer.id}" /></td>
                        <td><c:out value="${customer.email}" /></td>
                        <td><c:out value="${customer.f_name}" /></td>
                        <td><c:out value="${customer.l_name}" /></td>
                        <td><c:out value="${customer.dob}" /></td>
                    </tr>
            
                   </c:forEach>

            </tbody>
        </table>
    </div>
