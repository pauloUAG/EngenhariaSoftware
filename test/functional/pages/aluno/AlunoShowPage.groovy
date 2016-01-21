package pages.aluno

import geb.Page
import data.Data


class AlunoShowPage extends Page {
	static at = {
		title ==~ /Ver Aluno/
	}

	static content = {
		nomeEstudante {
			value('nomeEstudante')
		}

		cpf {
			value('cpf')
		}
	}

	def check (String name) {
		def aluno = Data.findByName(name)

		assert aluno != null
	}
}