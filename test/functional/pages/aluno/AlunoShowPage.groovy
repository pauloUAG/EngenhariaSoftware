package pages.aluno

import geb.Page
import data.Data


class AlunoShowPage extends Page {
	static at = {
		title ==~ /Ver Aluno/
	}

	static content = {
		row { val ->
			$ ('span.property-label', text: val).parent ()
		}

		value { val ->
			row (val).find ('span.property-value').text ()
		}

		nomeEstudante {
			value ('nomeEstudante')
		}

		cpf {
			value ('cpf')
		}
	}

	def check (String name) {
		def aluno = Data.findByName(name)

		assert aluno.name == nomeEstudante
		assert aluno.cpf == cpf
	}
}