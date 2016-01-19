
<%@ page import="br.ufrpe.uag.Periodo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'periodo.label', default: 'Periodo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-periodo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-periodo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="periodo.aluno.label" default="Aluno" /></th>
					
						<g:sortableColumn property="cargaHoraria" title="${message(code: 'periodo.cargaHoraria.label', default: 'Carga Horaria')}" />
					
						<g:sortableColumn property="codigoDisciplina" title="${message(code: 'periodo.codigoDisciplina.label', default: 'Codigo Disciplina')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'periodo.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="creditos" title="${message(code: 'periodo.creditos.label', default: 'Creditos')}" />
					
						<g:sortableColumn property="nomeDisciplina" title="${message(code: 'periodo.nomeDisciplina.label', default: 'Nome Disciplina')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${periodoInstanceList}" status="i" var="periodoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${periodoInstance.id}">${fieldValue(bean: periodoInstance, field: "aluno")}</g:link></td>
					
						<td>${fieldValue(bean: periodoInstance, field: "cargaHoraria")}</td>
					
						<td>${fieldValue(bean: periodoInstance, field: "codigoDisciplina")}</td>
					
						<td>${fieldValue(bean: periodoInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: periodoInstance, field: "creditos")}</td>
					
						<td>${fieldValue(bean: periodoInstance, field: "nomeDisciplina")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${periodoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
