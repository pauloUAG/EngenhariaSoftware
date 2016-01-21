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
		cpf blank: false, nullable: false, unique:true
		nomeEstudante blank: false, nullable: false
		sexo blank: true, nullable: true
		tipoIngresso blank: true, nullable: true 
		periodoIngresso blank: true, nullable: true
		turno blank: true, nullable: true
		argmClassf blank: true, nullable: true
	}

	static mapping = { id name: 'cpf' }

	static hasMany = [estatisticas : Estatistica, periodos : Periodo]
}