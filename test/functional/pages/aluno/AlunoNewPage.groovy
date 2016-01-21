package pages.aluno

import geb.Page
import data.Data


class AlunoNewPage extends Page {
	static at = {
		title ==~ /Criar Aluno/
	}

	static content = {
		save {
			$ ('input.save')
		}
	}

	def add (String name, String cpfAluno) {
		def aluno = Data.findByCpf(cpfAluno)

		$ ("form").nomeEstudante = name
		$ ("form").cpf = cpfAluno

		save.click ()
	}
}