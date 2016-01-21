package pages.aluno

import geb.Page
import data.Data


class AlunoShowPage extends Page {
	static at = {
		title ==~ /Mostrar Book/
	}

	static content = {
		row { val ->
			$ ('span.property-label', text: val).parent ()  // grails 2.0
		}

		value { val ->
			row (val).find ('span.property-value').text ()  // grails 2.0
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