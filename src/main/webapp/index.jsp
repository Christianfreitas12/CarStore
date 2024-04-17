<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <title>Document</title>
</head>

    <body>
        <h2>Cadastro de carro</h2>

        <form action="/create-car" method="post">
            <label>Car Name:</label>
            <input type="text" name="name" id="name" value="${param.name}">

            <input type="hidden" name="id" id="id" value="${param.id}">
            <button type="submit">CADASTRO</button>
        </form>

    </body>

</html>