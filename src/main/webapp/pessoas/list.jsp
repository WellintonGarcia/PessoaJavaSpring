<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
    <html>

    <head>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <meta charset="utf-8" />
        <title>Pessoas</title>

    </head>

    <body>

        <main class = "container">

            <h1>Pessoas</h1>

            <a href = "/pessoas/insert" class = "btn btn-success">Inserir</a>

            <table class = "table">

                <tr>

                    <th>ID</th>
                    <th>NOME</th>
                    <th>CPF</th>
                    <th>NASCIMENTO</th>
                    <th>E-MAIL</th>

                </tr>

                <c:forEach var="P" items="${pessoas}">

                    <tr>

                        <td>${P.id}</td>
                        <td>${P.nome}</td>
                        <td>${P.cpf}</td>
                        <td>${P.dataNascimento}</td>
                        <td>${P.email}</td>
                        <td><a href = "/pessoas/update/${P.id}" class = "btn btn-primary">Editar</a></td>
                        <td><a href = "/pessoas/delete/${P.id}" class = "btn btn-danger">Remover</a></td>

                    </tr>   

                </c:forEach>

            </table>

        </main>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>

    </body>

    </html>