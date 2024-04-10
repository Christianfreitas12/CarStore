<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>List Carros</title>
</head>
<body>
    <div>
        <h1>List Carros</h1>
            <table>
                <tr>
                    <th></th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="car" items="${cars}">
                    <tr>
                        <td></td>
                        <td>${car.id}</td>
                        <td>${car.name}</td>
                        <td>
                            <form action="/delete-car" method="post">
                                <input type="hidden" id="id" name="id" value="${car.id}">
                                <button type="submit">Delete</button>
                             </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </div>


</body>
</html>