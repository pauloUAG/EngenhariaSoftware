<%@ page import="br.ufrpe.uag.Periodo" %>



<div class="fieldcontain ${hasErrors(bean: periodoInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="periodo.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${br.ufrpe.uag.Aluno.list()}" optionKey="id" required="" value="${periodoInstance?.aluno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: periodoInstance, field: 'cargaHoraria', 'error')} required">
	<label for="cargaHoraria">
		<g:message code="periodo.cargaHoraria.label" default="Carga Horaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cargaHoraria" type="number" value="${periodoInstance.cargaHoraria}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: periodoInstance, field: 'codigoDisciplina', 'error')} required">
	<label for="codigoDisciplina">
		<g:message code="periodo.codigoDisciplina.label" default="Codigo Disciplina" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoDisciplina" required="" value="${periodoInstance?.codigoDisciplina}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: periodoInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="periodo.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${periodoInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: periodoInstance, field: 'creditos', 'error')} required">
	<label for="creditos">
		<g:message code="periodo.creditos.label" default="Creditos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="creditos" type="number" value="${periodoInstance.creditos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: periodoInstance, field: 'nomeDisciplina', 'error')} required">
	<label for="nomeDisciplina">
		<g:message code="periodo.nomeDisciplina.label" default="Nome Disciplina" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeDisciplina" required="" value="${periodoInstance?.nomeDisciplina}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: periodoInstance, field: 'semestre', 'error')} required">
	<label for="semestre">
		<g:message code="periodo.semestre.label" default="Semestre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semestre" required="" value="${periodoInstance?.semestre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: periodoInstance, field: 'situacaoConceito', 'error')} required">
	<label for="situacaoConceito">
		<g:message code="periodo.situacaoConceito.label" default="Situacao Conceito" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacaoConceito" required="" value="${periodoInstance?.situacaoConceito}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: periodoInstance, field: 'tipoDisciplina', 'error')} required">
	<label for="tipoDisciplina">
		<g:message code="periodo.tipoDisciplina.label" default="Tipo Disciplina" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoDisciplina" required="" value="${periodoInstance?.tipoDisciplina}"/>

</div>

