
<%@ page import="br.ufrpe.uag.Estatistica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estatistica.label', default: 'Estatistica')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-estatistica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-estatistica" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="estatistica.aluno.label" default="Aluno" /></th>
					
						<g:sortableColumn property="aprovacoes" title="${message(code: 'estatistica.aprovacoes.label', default: 'Aprovacoes')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'estatistica.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="dp" title="${message(code: 'estatistica.dp.label', default: 'Dp')}" />
					
						<g:sortableColumn property="mediaGeral" title="${message(code: 'estatistica.mediaGeral.label', default: 'Media Geral')}" />
					
						<g:sortableColumn property="reprovacoesFalta" title="${message(code: 'estatistica.reprovacoesFalta.label', default: 'Reprovacoes Falta')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estatisticaInstanceList}" status="i" var="estatisticaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estatisticaInstance.id}">${fieldValue(bean: estatisticaInstance, field: "aluno")}</g:link></td>
					
						<td>${fieldValue(bean: estatisticaInstance, field: "aprovacoes")}</td>
					
						<td>${fieldValue(bean: estatisticaInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: estatisticaInstance, field: "dp")}</td>
					
						<td>${fieldValue(bean: estatisticaInstance, field: "mediaGeral")}</td>
					
						<td>${fieldValue(bean: estatisticaInstance, field: "reprovacoesFalta")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${estatisticaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
