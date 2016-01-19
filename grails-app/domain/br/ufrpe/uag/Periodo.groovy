package br.ufrpe.uag

class Periodo {

	String semestre
	String codigoDisciplina
	String nomeDisciplina
	String tipoDisciplina
	Integer cargaHoraria
	Integer creditos
	String situacaoConceito
	String cpf

	static constraints = {
	}

	static belongsTo = [aluno : Aluno]

	static mapping = {
		id column: 'cpf', generator: 'foreign', params: [property: 'aluno']
		cpf insertable: false, updateable: false
	}
}
