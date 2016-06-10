import static cucumber.api.groovy.EN.*
import sun.security.util.PendingException
import br.ufrpe.uag.Aluno
import pages.aluno.AlunoListPage
import pages.aluno.AlunoNewPage
import pages.aluno.AlunoShowPage
import data.Data

// gui

//Given(~/^I open the aluno tracker$/) { ->
//	to AlunoListPage
//	at AlunoListPage
//}
//When(~/^I create the aluno "([^"]*)" with cpf "([^"]*)"$/) { String name, String cpf ->
//	page.toAlunoNewPage()
//	at AlunoNewPage
//	page.add(name, cpf)
//}
//Then(~/^I see "([^"]*)" details$/) { String name ->
//	at AlunoShowPage
//	page.check(name)
//}

// controller

Given(~/^The system has an aluno named "([^"]*)" with cpf "([^"]*)"$/) { String nomeEstudante, String cpf ->
	Data.createAluno(nomeEstudante, cpf)
	assert Aluno.findByCpf(cpf) != null
}
When(~/^I add the aluno "([^"]*)" with cpf "([^"]*)"$/) { String nomeEstudante, String cpf ->
	Data.createAluno(nomeEstudante, cpf)
}
Then(~/^The aluno "([^"]*)" is not added twice$/) { String nomeEstudante ->
	alunos = Aluno.findAllByNomeEstudante(nomeEstudante)
	assert alunos.size() == 1
}