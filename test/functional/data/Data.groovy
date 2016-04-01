package data

import br.ufrpe.uag.AlunoController
import br.ufrpe.uag.Aluno

class Data {

	static def alunos = [
		[cpf: "059.123.543-67", nomeEstudante: "Fulano da Silva Sauro"]
	]

	static public def findByCpf(String cpfAluno) {
		alunos.find { aluno ->
			aluno.cpf == cpfAluno
		}
	}

	static public def findByName(String name) {
		alunos.find { aluno ->
			aluno.nomeEstudante == name
		}
	}
	
	static public void createAluno(String name, cpfEstudante) {
		def controller = new AlunoController()
		controller.params << [nomeEstudante: name, cpf: cpfEstudante]
		controller.request.setContent(new byte[1000])
		controller.create()
		controller.save()
		controller.response.reset()
	}
}