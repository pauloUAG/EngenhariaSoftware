import static cucumber.api.groovy.EN.*
import sun.security.util.PendingException
import br.ufrpe.uag.Aluno
import pages.aluno.AlunoListPage
import pages.aluno.AlunoNewPage
import pages.aluno.AlunoShowPage


Given(~/^I open the aluno tracker$/) { ->
	to AlunoListPage
	at AlunoListPage
}
When(~/^I create the aluno "([^"]*)" with cpf "([^"]*)"$/) { String name, String cpf ->
	page.toAlunoNewPage()
	at AlunoNewPage
	page.add(name, cpf)
}
Then(~/^I see "([^"]*)" details$/) { String name ->
	at AlunoShowPage
	page.check(name)
}