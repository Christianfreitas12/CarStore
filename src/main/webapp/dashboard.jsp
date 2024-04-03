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
                    <th>Name</th>
                </tr>
                <c:forEach var="car" items="${cars}">
                    <tr>
                        <td></td>
                        <td>${car.name}</td>
                    </tr>
                </c:forEach>
            </table>
    </div>


</body>
</html>