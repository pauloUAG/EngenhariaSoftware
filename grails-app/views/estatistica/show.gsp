
<%@ page import="br.ufrpe.uag.Estatistica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estatistica.label', default: 'Estatistica')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-estatistica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-estatistica" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list estatistica">
			
				<g:if test="${estatisticaInstance?.aluno}">
				<li class="fieldcontain">
					<span id="aluno-label" class="property-label"><g:message code="estatistica.aluno.label" default="Aluno" /></span>
					
						<span class="property-value" aria-labelledby="aluno-label"><g:link controller="aluno" action="show" id="${estatisticaInstance?.aluno?.id}">${estatisticaInstance?.aluno?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.aprovacoes}">
				<li class="fieldcontain">
					<span id="aprovacoes-label" class="property-label"><g:message code="estatistica.aprovacoes.label" default="Aprovacoes" /></span>
					
						<span class="property-value" aria-labelledby="aprovacoes-label"><g:fieldValue bean="${estatisticaInstance}" field="aprovacoes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="estatistica.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${estatisticaInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.dp}">
				<li class="fieldcontain">
					<span id="dp-label" class="property-label"><g:message code="estatistica.dp.label" default="Dp" /></span>
					
						<span class="property-value" aria-labelledby="dp-label"><g:fieldValue bean="${estatisticaInstance}" field="dp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.mediaGeral}">
				<li class="fieldcontain">
					<span id="mediaGeral-label" class="property-label"><g:message code="estatistica.mediaGeral.label" default="Media Geral" /></span>
					
						<span class="property-value" aria-labelledby="mediaGeral-label"><g:fieldValue bean="${estatisticaInstance}" field="mediaGeral"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.reprovacoesFalta}">
				<li class="fieldcontain">
					<span id="reprovacoesFalta-label" class="property-label"><g:message code="estatistica.reprovacoesFalta.label" default="Reprovacoes Falta" /></span>
					
						<span class="property-value" aria-labelledby="reprovacoesFalta-label"><g:fieldValue bean="${estatisticaInstance}" field="reprovacoesFalta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.reprovacoesNota}">
				<li class="fieldcontain">
					<span id="reprovacoesNota-label" class="property-label"><g:message code="estatistica.reprovacoesNota.label" default="Reprovacoes Nota" /></span>
					
						<span class="property-value" aria-labelledby="reprovacoesNota-label"><g:fieldValue bean="${estatisticaInstance}" field="reprovacoesNota"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.tipoEletiva}">
				<li class="fieldcontain">
					<span id="tipoEletiva-label" class="property-label"><g:message code="estatistica.tipoEletiva.label" default="Tipo Eletiva" /></span>
					
						<span class="property-value" aria-labelledby="tipoEletiva-label"><g:fieldValue bean="${estatisticaInstance}" field="tipoEletiva"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.tipoIsolada}">
				<li class="fieldcontain">
					<span id="tipoIsolada-label" class="property-label"><g:message code="estatistica.tipoIsolada.label" default="Tipo Isolada" /></span>
					
						<span class="property-value" aria-labelledby="tipoIsolada-label"><g:fieldValue bean="${estatisticaInstance}" field="tipoIsolada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.tipoObrig}">
				<li class="fieldcontain">
					<span id="tipoObrig-label" class="property-label"><g:message code="estatistica.tipoObrig.label" default="Tipo Obrig" /></span>
					
						<span class="property-value" aria-labelledby="tipoObrig-label"><g:fieldValue bean="${estatisticaInstance}" field="tipoObrig"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.tipoOpta}">
				<li class="fieldcontain">
					<span id="tipoOpta-label" class="property-label"><g:message code="estatistica.tipoOpta.label" default="Tipo Opta" /></span>
					
						<span class="property-value" aria-labelledby="tipoOpta-label"><g:fieldValue bean="${estatisticaInstance}" field="tipoOpta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estatisticaInstance?.trancamento}">
				<li class="fieldcontain">
					<span id="trancamento-label" class="property-label"><g:message code="estatistica.trancamento.label" default="Trancamento" /></span>
					
						<span class="property-value" aria-labelledby="trancamento-label"><g:fieldValue bean="${estatisticaInstance}" field="trancamento"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:estatisticaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${estatisticaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
