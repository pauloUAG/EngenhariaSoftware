package br.ufrpe.uag

class Disciplina {

	String nomeDisciplina
	int periodo
	String codigoDisciplina
	int cargaHoraria
	String turma
	String semestre
	
	//TODO incluir disciplinas pre-requisitos
	//TODO incluir professores responsaveis
	//TODO incluir alunos
	
    static constraints = {
    }
	
	static mapping = { id generator: 'increment' }
}
