package br.ufrpe.uag

class Estatistica {

	Integer aprovacoes
	Integer reprovacoesNota
	Integer reprovacoesFalta
	Integer trancamento
	Integer dp
	Integer tipoObrig
	Integer tipoOpta
	Integer tipoEletiva
	Integer tipoIsolada
	Integer mediaGeral
	String cpf

	static constraints = {
	}

	static belongsTo = [aluno : Aluno]

	static mapping = {
		id column: 'cpf', generator: 'foreign', params: [property: 'aluno']
		cpf insertable: false, updateable: false
	}
}