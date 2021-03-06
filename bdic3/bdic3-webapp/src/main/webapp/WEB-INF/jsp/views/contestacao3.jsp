<%@ page contentType="text/html;charset=UTF-8" language="java"
	trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util"%>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld"%>

<%-- Emppty dust.js template --%>

<h1>Confirmação de Fraude</h1>

<c:if test="${not empty mensagemErro}">
	<div class="alert alert-danger">${mensagemErro}</div>
</c:if>

<form:form id="validacaoForm" action="/bdic3/contestacao/contestacao4"
	modelAttribute="contestacaoVO" method="POST" class="form-horizontal"
	role="form">

	<form:hidden path="traId" value="${contestacaoVO.traId}" />

	<div class="form-group">
		<label class="col-sm-2 control-label">Nome do Cliente</label>
		<div class="col-sm-10">
			<p class="form-control-static">${contestacaoVO.nomeCliente}</p>
		</div>
		<form:hidden path="nomeCliente" value="${contestacaoVO.nomeCliente}" />
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">CPF do Cliente</label>
		<div class="col-sm-10">
			<p class="form-control-static">${contestacaoVO.cpfCliente}</p>
		</div>
		<form:hidden path="cpfCliente" value="${contestacaoVO.cpfCliente}" />
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">Valor da Transação</label>
		<div class="col-sm-10">
			<p class="form-control-static">${contestacaoVO.valorTransacao}</p>
		</div>
		<form:hidden path="valorTransacao"
			value="${contestacaoVO.valorTransacao}" />
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">Data da Transação</label>
		<div class="col-sm-10">
			<p class="form-control-static">${contestacaoVO.dataTransacao}</p>
		</div>
		<form:hidden path="dataTransacao"
			value="${contestacaoVO.dataTransacao}" />
	</div>

	<div class="form-group">
		<label for="fraudeTipo" class="col-sm-2 control-label">Tipo de Fraude</label>
		<div class="col-sm-10"><form:input path="fraudeTipo" class="form-control"	placeholder="Tipo de Fraude" /></div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">Confirmar
				Fraude</button>
		</div>
	</div>
</form:form>
