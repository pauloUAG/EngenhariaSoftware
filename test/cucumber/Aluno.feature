Feature: Aluno
	As an administrator of the uag system
	I want to add, remove, and edit alunos in the system
	
Scenario: new aluno
    Given the system has no aluno with cpf "058.014.543-67"
    When I create the aluno "Fulano da Silva Sauro" with tipo ingresso "Vestibular"
    Then the aluno with cpf "058.014.543-67" is properly stored by the system