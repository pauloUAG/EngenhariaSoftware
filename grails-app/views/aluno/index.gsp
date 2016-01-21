
<%@ page import="br.ufrpe.uag.Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aluno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aluno" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cpf" title="${message(code: 'aluno.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="nomeEstudante" title="${message(code: 'aluno.nomeEstudante.label', default: 'Nome Estudante')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'aluno.sexo.label', default: 'Sexo')}" />
					
						<g:sortableColumn property="tipoIngresso" title="${message(code: 'aluno.tipoIngresso.label', default: 'Tipo Ingresso')}" />
					
						<g:sortableColumn property="periodoIngresso" title="${message(code: 'aluno.periodoIngresso.label', default: 'Periodo Ingresso')}" />
					
						<g:sortableColumn property="turno" title="${message(code: 'aluno.turno.label', default: 'Turno')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alunoInstanceList}" status="i" var="alunoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alunoInstance.id}">${fieldValue(bean: alunoInstance, field: "cpf")}</g:link></td>
					
						<td>${fieldValue(bean: alunoInstance, field: "nomeEstudante")}</td>
					
						<td>${fieldValue(bean: alunoInstance, field: "sexo")}</td>
					
						<td>${fieldValue(bean: alunoInstance, field: "tipoIngresso")}</td>
					
						<td>${fieldValue(bean: alunoInstance, field: "periodoIngresso")}</td>
					
						<td>${fieldValue(bean: alunoInstance, field: "turno")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alunoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
