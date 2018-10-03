<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:template title="Cadastro de Produto">
	<jsp:attribute name="scripts">
		<!-- Código JS... -->
	</jsp:attribute>
	<jsp:body>
		<h4>Produtos:</h4>
		<table class="table">
		  <thead class="table-primary">
		    <tr>
		      <th scope="col">Id</th>
		      <th scope="col">Nome</th>
		      <th scope="col">Preço</th>
		      <th scope="col">Opções</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${list}" var="prod">
		  		<tr>
		  			<td>${prod.id }</td>
		  			<td>${prod.titulo}</td>
		  			<td>${prod.preco}</td>
		  			<td><a href="/Spring/produto/editar/${prod.id }">Editar</a> | <a
							href="/Spring/produto/excluir/${prod.id }" data-toggle="modal" data-target="#myModal">Excluir</a></td>
		  		</tr>
		  	</c:forEach>
		  </tbody>
		</table>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title">Excluir</h5>
		        <button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <p>Deseja mesmo excluir esse produto?</p>
		      </div>
		      <div class="modal-footer">
		        <button type="submit" value="${prod.id }" class="btn btn-primary">Sim</button>
		        <button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancelar</button>
		      </div>
		    </div>
		  </div>
		</div>
	</jsp:body>
</tags:template>