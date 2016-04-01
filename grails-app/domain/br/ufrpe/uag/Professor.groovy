package br.ufrpe.uag

class Professor {
	
	String cpf
	String nomeProfessor
	String sexo
	String tipoIngresso
	String matricula
	Date dataIngresso

    static constraints = {
		cpf blank: false, nullable: false, unique:true
		nomeProfessor blank: false, nullable: false
		sexo blank: true, nullable: true
		tipoIngresso blank: true, nullable: true
		matricula blank: false, nullable: false
    }
	
	static mapping = { id generator: 'increment' }
}
