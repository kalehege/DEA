
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <c:if test="${product != null}">
        <h1>ID: <c:out value='${product.id}' /></h1>
        <h1>Name: <c:out value='${product.name}' /></h1>
        <h1>Description: <c:out value='${product.description}' /></h1>
        <h1>Size: <c:out value='${product.size}' /></h1>
        <h1>Price: <c:out value='${product.price}' /></h1>
    </c:if>
    </body>
</html>
