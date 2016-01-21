Feature: Aluno
	As an administrator of the uag system
	I want to add, remove, and edit alunos in the system
	so that I do not need to do it manually
	
Scenario: new aluno
    Given I open the aluno tracker
    When I create the aluno "Fulano da Silva Sauro" with cpf "059.123.543-67"
    Then I see "Fulano da Silva Sauro" details