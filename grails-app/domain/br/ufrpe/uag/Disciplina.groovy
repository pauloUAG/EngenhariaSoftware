package br.ufrpe.uag

class Disciplina {

	String nomeDisciplina
	int periodo
	String codigoDisciplina
	int cargaHoraria
	String turma
	String semestre
	// ALUNOS DA DISCIPLINA
	String[] cpfMedia 
	
	
	//TODO incluir disciplinas pre-requisitos
	//TODO incluir professores responsaveis
	//TODO incluir alunos
	
	
	
    static constraints = {
    }
	
	static mapping = { id generator: 'increment' }
	static hasMany = [alunos : Aluno]
}
