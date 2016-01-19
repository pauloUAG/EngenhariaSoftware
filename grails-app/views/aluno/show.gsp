
<%@ page import="br.ufrpe.uag.Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aluno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aluno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aluno">
			
				<g:if test="${alunoInstance?.argmClassf}">
				<li class="fieldcontain">
					<span id="argmClassf-label" class="property-label"><g:message code="aluno.argmClassf.label" default="Argm Classf" /></span>
					
						<span class="property-value" aria-labelledby="argmClassf-label"><g:fieldValue bean="${alunoInstance}" field="argmClassf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="aluno.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${alunoInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.estatisticas}">
				<li class="fieldcontain">
					<span id="estatisticas-label" class="property-label"><g:message code="aluno.estatisticas.label" default="Estatisticas" /></span>
					
						<g:each in="${alunoInstance.estatisticas}" var="e">
						<span class="property-value" aria-labelledby="estatisticas-label"><g:link controller="estatistica" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.nomeEstudante}">
				<li class="fieldcontain">
					<span id="nomeEstudante-label" class="property-label"><g:message code="aluno.nomeEstudante.label" default="Nome Estudante" /></span>
					
						<span class="property-value" aria-labelledby="nomeEstudante-label"><g:fieldValue bean="${alunoInstance}" field="nomeEstudante"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.periodoIngresso}">
				<li class="fieldcontain">
					<span id="periodoIngresso-label" class="property-label"><g:message code="aluno.periodoIngresso.label" default="Periodo Ingresso" /></span>
					
						<span class="property-value" aria-labelledby="periodoIngresso-label"><g:fieldValue bean="${alunoInstance}" field="periodoIngresso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.periodos}">
				<li class="fieldcontain">
					<span id="periodos-label" class="property-label"><g:message code="aluno.periodos.label" default="Periodos" /></span>
					
						<g:each in="${alunoInstance.periodos}" var="p">
						<span class="property-value" aria-labelledby="periodos-label"><g:link controller="periodo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="aluno.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${alunoInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.tipoIngresso}">
				<li class="fieldcontain">
					<span id="tipoIngresso-label" class="property-label"><g:message code="aluno.tipoIngresso.label" default="Tipo Ingresso" /></span>
					
						<span class="property-value" aria-labelledby="tipoIngresso-label"><g:fieldValue bean="${alunoInstance}" field="tipoIngresso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.turno}">
				<li class="fieldcontain">
					<span id="turno-label" class="property-label"><g:message code="aluno.turno.label" default="Turno" /></span>
					
						<span class="property-value" aria-labelledby="turno-label"><g:fieldValue bean="${alunoInstance}" field="turno"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:alunoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${alunoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
