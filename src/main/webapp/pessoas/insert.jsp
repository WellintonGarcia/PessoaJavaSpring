<%@ page language="java" contentType="text/html ; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>

    <html lang="pt-br">

    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <meta charset="utf-8" />
        <title> Nova Pessoa</title>
    </head>

    <body>
        <main class="container">
            <h1>Nova Pessoa</h1>
            <hr />
            <form action="insert" method="post">
                <div class="form-group">
                    <label for="titulo">Nome</label>
                    <input type="text" name="nome" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="titulo">CPF</label>
                    <input type="text" name="cpf" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="titulo">Data de Nascimento</label>
                    <input type="text" name="dataNascimento" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="titulo">E-mail</label>
                    <input type="text" name="email" class="form-control" />
                </div>
                <a href="/pessoas/list" class="btn btn-primary">Voltar</a>
                <input type="submit" value="Salvar" class="btn btn-success" />
            </form>
        </main>

    </body>

    </html>