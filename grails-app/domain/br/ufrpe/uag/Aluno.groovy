package br.ufrpe.uag

class Aluno {

	String cpf
	String nomeEstudante
	String sexo
	String tipoIngresso
	String periodoIngresso
	String turno
	double argmClassf

	static constraints = {
	}

	static mapping = { id name: 'cpf' }

	static hasMany = [estatisticas : Estatistica, periodos : Periodo]
}