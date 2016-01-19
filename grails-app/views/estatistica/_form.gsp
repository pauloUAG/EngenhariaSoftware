<%@ page import="br.ufrpe.uag.Estatistica" %>



<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="estatistica.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${br.ufrpe.uag.Aluno.list()}" optionKey="id" required="" value="${estatisticaInstance?.aluno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'aprovacoes', 'error')} required">
	<label for="aprovacoes">
		<g:message code="estatistica.aprovacoes.label" default="Aprovacoes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="aprovacoes" type="number" value="${estatisticaInstance.aprovacoes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="estatistica.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${estatisticaInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'dp', 'error')} required">
	<label for="dp">
		<g:message code="estatistica.dp.label" default="Dp" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="dp" type="number" value="${estatisticaInstance.dp}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'mediaGeral', 'error')} required">
	<label for="mediaGeral">
		<g:message code="estatistica.mediaGeral.label" default="Media Geral" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="mediaGeral" type="number" value="${estatisticaInstance.mediaGeral}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'reprovacoesFalta', 'error')} required">
	<label for="reprovacoesFalta">
		<g:message code="estatistica.reprovacoesFalta.label" default="Reprovacoes Falta" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reprovacoesFalta" type="number" value="${estatisticaInstance.reprovacoesFalta}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'reprovacoesNota', 'error')} required">
	<label for="reprovacoesNota">
		<g:message code="estatistica.reprovacoesNota.label" default="Reprovacoes Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reprovacoesNota" type="number" value="${estatisticaInstance.reprovacoesNota}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'tipoEletiva', 'error')} required">
	<label for="tipoEletiva">
		<g:message code="estatistica.tipoEletiva.label" default="Tipo Eletiva" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tipoEletiva" type="number" value="${estatisticaInstance.tipoEletiva}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'tipoIsolada', 'error')} required">
	<label for="tipoIsolada">
		<g:message code="estatistica.tipoIsolada.label" default="Tipo Isolada" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tipoIsolada" type="number" value="${estatisticaInstance.tipoIsolada}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'tipoObrig', 'error')} required">
	<label for="tipoObrig">
		<g:message code="estatistica.tipoObrig.label" default="Tipo Obrig" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tipoObrig" type="number" value="${estatisticaInstance.tipoObrig}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'tipoOpta', 'error')} required">
	<label for="tipoOpta">
		<g:message code="estatistica.tipoOpta.label" default="Tipo Opta" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tipoOpta" type="number" value="${estatisticaInstance.tipoOpta}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estatisticaInstance, field: 'trancamento', 'error')} required">
	<label for="trancamento">
		<g:message code="estatistica.trancamento.label" default="Trancamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="trancamento" type="number" value="${estatisticaInstance.trancamento}" required=""/>

</div>

