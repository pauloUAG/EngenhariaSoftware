package pages.aluno

import geb.Page
import pages.aluno.AlunoNewPage


class AlunoListPage extends Page {
	static url = "aluno/index"

	static at = {
		title ==~ /Aluno Listagem/
	}

	static content = {
		create (to: AlunoNewPage) {
			$ ('a.create')
		}
	}

	def toAlunoNewPage() {
		create.click ()
	}
}