package br.ufrpe.uag

class Aluno {

	String cpf
	String nomeEstudante
	String sexo
	String tipoIngresso
	String periodoIngresso
	String turno
	double argmClassf
	// DISCIPLINAS DO ALUNO
	String[] codigoDisciplina
	

	static constraints = {
		cpf blank: false, nullable: false, unique:true
		nomeEstudante blank: false, nullable: false
		sexo blank: true, nullable: true
		tipoIngresso blank: true, nullable: true 
		periodoIngresso blank: true, nullable: true
		turno blank: true, nullable: true
		argmClassf blank: true, nullable: true
	}	

	/* hashCode sobrescrito para buscar e comparar um aluno que sera inserido com um que ja foi salvo, impedindo insercoes duplicadas  */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cpf == null) ? 0 : cpf.hashCode());
		return result;
	}

	/* hashCode sobrescrito para buscar e comparar um aluno que sera inserido com um que ja foi salvo, impedindo insercoes duplicadas  */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Aluno))
			return false;
		Aluno other = (Aluno) obj;
		if (cpf == null) {
			if (other.cpf != null)
				return false;
		} else if (!cpf.equals(other.cpf))
			return false;
		return true;
	}

	static mapping = { id generator: 'increment' }
	// ADICAO DO RELACIONAMENTO COM DISCIPLINAS, POIS UM ALUNO TEM VARIAS DISCIPLINAS
	static hasMany = [estatisticas : Estatistica, periodos : Periodo, disciplinas : Disciplina]	
}