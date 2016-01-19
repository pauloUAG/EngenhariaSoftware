
<%@ page import="br.ufrpe.uag.Periodo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'periodo.label', default: 'Periodo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-periodo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-periodo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list periodo">
			
				<g:if test="${periodoInstance?.aluno}">
				<li class="fieldcontain">
					<span id="aluno-label" class="property-label"><g:message code="periodo.aluno.label" default="Aluno" /></span>
					
						<span class="property-value" aria-labelledby="aluno-label"><g:link controller="aluno" action="show" id="${periodoInstance?.aluno?.id}">${periodoInstance?.aluno?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoInstance?.cargaHoraria}">
				<li class="fieldcontain">
					<span id="cargaHoraria-label" class="property-label"><g:message code="periodo.cargaHoraria.label" default="Carga Horaria" /></span>
					
						<span class="property-value" aria-labelledby="cargaHoraria-label"><g:fieldValue bean="${periodoInstance}" field="cargaHoraria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoInstance?.codigoDisciplina}">
				<li class="fieldcontain">
					<span id="codigoDisciplina-label" class="property-label"><g:message code="periodo.codigoDisciplina.label" default="Codigo Disciplina" /></span>
					
						<span class="property-value" aria-labelledby="codigoDisciplina-label"><g:fieldValue bean="${periodoInstance}" field="codigoDisciplina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="periodo.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${periodoInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoInstance?.creditos}">
				<li class="fieldcontain">
					<span id="creditos-label" class="property-label"><g:message code="periodo.creditos.label" default="Creditos" /></span>
					
						<span class="property-value" aria-labelledby="creditos-label"><g:fieldValue bean="${periodoInstance}" field="creditos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoInstance?.nomeDisciplina}">
				<li class="fieldcontain">
					<span id="nomeDisciplina-label" class="property-label"><g:message code="periodo.nomeDisciplina.label" default="Nome Disciplina" /></span>
					
						<span class="property-value" aria-labelledby="nomeDisciplina-label"><g:fieldValue bean="${periodoInstance}" field="nomeDisciplina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoInstance?.semestre}">
				<li class="fieldcontain">
					<span id="semestre-label" class="property-label"><g:message code="periodo.semestre.label" default="Semestre" /></span>
					
						<span class="property-value" aria-labelledby="semestre-label"><g:fieldValue bean="${periodoInstance}" field="semestre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoInstance?.situacaoConceito}">
				<li class="fieldcontain">
					<span id="situacaoConceito-label" class="property-label"><g:message code="periodo.situacaoConceito.label" default="Situacao Conceito" /></span>
					
						<span class="property-value" aria-labelledby="situacaoConceito-label"><g:fieldValue bean="${periodoInstance}" field="situacaoConceito"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoInstance?.tipoDisciplina}">
				<li class="fieldcontain">
					<span id="tipoDisciplina-label" class="property-label"><g:message code="periodo.tipoDisciplina.label" default="Tipo Disciplina" /></span>
					
						<span class="property-value" aria-labelledby="tipoDisciplina-label"><g:fieldValue bean="${periodoInstance}" field="tipoDisciplina"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:periodoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${periodoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
