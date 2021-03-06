<%-- 
    Document   : index
    Created on : 27/03/2021, 18:55:40
    Author     : eu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
<%@include file="../componentes/head.jsp"%>

<body>
<div class="container row-cols-sm-4">
  <%@include file="../componentes/navbar.jsp"%>
  <a href="${pageContext.request.contextPath}/src/perfis/listar-perfil.jsp">
    <img src="${pageContext.request.contextPath}/imagens/voltar.svg" alt="seta de voltar">
  </a>

  <div class="ms-auto me-auto mt-5">
    <h3 class="mt-5 mb-3">Atualizar</h3>
    <form action="${pageContext.request.contextPath}/gerenciar_menu.do" method="POST">

      <div class="form-group">
        <input value="${sessionScope.menu.id}" type="text" class="form-control" name="id" hidden>

        <label class="mt-2" for="nome">Nome: </label>
        <input value="${sessionScope.menu.nome}" type="text" class="form-control" id="nome" name="nome" placeholder="insira o nome do menu">

        <label class="mt-2" for="link">Link: </label>
        <input value="${sessionScope.menu.link}" type="text" class="form-control" id="link" name="link" placeholder="insira o link">

        <label class="mt-2" for="exibir">Exibir: </label>
        <select id="exibir" class="form-select" name="exibir">
          <option ${sessionScope.menu.exibir == 1 ? "selected" : null} value="1">Sim</option>
          <option ${sessionScope.menu.exibir == 0 ? "selected" : null} value="0">Não</option>
        </select>
      </div>

      <button class="btn btn-primary mt-3 ms-auto me-auto" type="submit">Enviar</button>
    </form>

  </div>

</div>
</body>
</html>
