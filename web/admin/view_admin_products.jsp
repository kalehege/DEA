
<!DOCTYPE html>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
    <title>Contact</title>
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
                <th>Name</th>
                <th>Image</th>
                <th>Description</th>
                <th>Size</th>
                <th>Price</th>
                <th>Category</th>
                <th>View</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${listProduct}">
                <tr>
                    <td><c:out value="${product.id}" /></td>
                    <td><c:out value="${product.name}" /></td>
                    <td>
                        <img src=public/images/product/${product.image}" alt="Product Image" style="max-width: 100px; max-height: 100px;">
                    </td>
                    <td><c:out value="${product.description}" /></td>
                    <td><c:out value="${product.size}" /></td>
                    <td><c:out value="${product.price}" /></td>
                    <td><c:out value="${product.category}" /></td>
                    <td><a class="btn btn-primary" href="../product?id=${product.id}">View</a></td>
                    <td><a class="btn btn-danger" href="../delete?id=${product.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
