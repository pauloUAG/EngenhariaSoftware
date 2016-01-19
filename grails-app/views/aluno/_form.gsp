<%@ page import="br.ufrpe.uag.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'argmClassf', 'error')} required">
	<label for="argmClassf">
		<g:message code="aluno.argmClassf.label" default="Argm Classf" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="argmClassf" value="${fieldValue(bean: alunoInstance, field: 'argmClassf')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="aluno.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${alunoInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'estatisticas', 'error')} ">
	<label for="estatisticas">
		<g:message code="aluno.estatisticas.label" default="Estatisticas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${alunoInstance?.estatisticas?}" var="e">
    <li><g:link controller="estatistica" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="estatistica" action="create" params="['aluno.id': alunoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'estatistica.label', default: 'Estatistica')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nomeEstudante', 'error')} required">
	<label for="nomeEstudante">
		<g:message code="aluno.nomeEstudante.label" default="Nome Estudante" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeEstudante" required="" value="${alunoInstance?.nomeEstudante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'periodoIngresso', 'error')} required">
	<label for="periodoIngresso">
		<g:message code="aluno.periodoIngresso.label" default="Periodo Ingresso" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="periodoIngresso" required="" value="${alunoInstance?.periodoIngresso}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'periodos', 'error')} ">
	<label for="periodos">
		<g:message code="aluno.periodos.label" default="Periodos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${alunoInstance?.periodos?}" var="p">
    <li><g:link controller="periodo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="periodo" action="create" params="['aluno.id': alunoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'periodo.label', default: 'Periodo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="aluno.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sexo" required="" value="${alunoInstance?.sexo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'tipoIngresso', 'error')} required">
	<label for="tipoIngresso">
		<g:message code="aluno.tipoIngresso.label" default="Tipo Ingresso" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoIngresso" required="" value="${alunoInstance?.tipoIngresso}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'turno', 'error')} required">
	<label for="turno">
		<g:message code="aluno.turno.label" default="Turno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="turno" required="" value="${alunoInstance?.turno}"/>

</div>

