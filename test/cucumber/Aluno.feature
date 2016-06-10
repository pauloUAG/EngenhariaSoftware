Feature: Aluno
	As an administrator of the uag system
	I want to add, remove, and edit alunos in the system
	so that I do not need to do it manually
	


Scenario: add duplicated aluno (controller)
	Given The system has an aluno named "Fulano da Silva Sauro" with cpf "059.123.543-67"
	When I add the aluno "Fulano da Silva Sauro" with cpf "059.123.543-67"
	Then The aluno "Fulano da Silva Sauro" is not added twice
	