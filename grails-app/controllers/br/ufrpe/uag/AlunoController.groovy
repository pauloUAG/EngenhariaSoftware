package br.ufrpe.uag

import org.codehaus.groovy.grails.validation.Validateable


@Validateable
class AlunoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Aluno.list(params), model:[alunoInstanceCount: Aluno.count()]
    }
	
	// ESPECIFICACAO DO METODO PARA ALUNO
    def show_aluno(Aluno alunoInstance) {
        respond alunoInstance
    }
	
	// ESPECIFICACAO DO METODO PARA ALUNO
    def create_aluno() {
        respond new Aluno(params)
    }
	
	// ESPECIFICACAO DO METODO PARA ALUNO
    def save_aluno(Aluno alunoInstance) {
		
		// VERIFICA SE ALUNO EXISTE
        alunoExiste(alunoInstance)
		
        if (alunoInstance.hasErrors()) {
            respond alunoInstance.errors, view:'create'
            return
        }		
        alunoInstance.save flush:true
		
		request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'aluno.label', default: 'Aluno'), alunoInstance.id])
                redirect alunoInstance
            }
            '*' { respond alunoInstance, [status: CREATED] }
        }
    }

	private alunoExiste(Aluno alunoInstance) {
		if (alunoInstance == null) {
			notFound()
			return
		}
	}
	
	// ESPECIFICACAO DO METODO PARA ALUNO
    def edit_aluno(Aluno alunoInstance) {
        respond alunoInstance
    }
	
	// ESPECIFICACAO DO METODO PARA ALUNO
    def update_aluno(Aluno alunoInstance) {
		// VERIFICA SE ALUNO EXISTE
        alunoExiste(alunoInstance) 

        if (alunoInstance.hasErrors()) {
            respond alunoInstance.errors, view:'edit'
            return
        }

        alunoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Aluno.label', default: 'Aluno'), alunoInstance.id])
                redirect alunoInstance
            }
            '*'{ respond alunoInstance, [status: OK] }
        }
    }
	
	// ESPECIFICACAO DO METODO PARA ALUNO
    def delete_aluno(Aluno alunoInstance) {

        // VERIFICA SE ALUNO EXISTE
        alunoExiste(alunoInstance)

        alunoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Aluno.label', default: 'Aluno'), alunoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'aluno.label', default: 'Aluno'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	// ADICAO DO METODO PROCURAR ALUNO POR CPF
	def FindByCpf_aluno(String cpf){
		todosalunos = Aluno.findAll()
		for(alucpf in todosalunos){
			if(alucpf.cpf == cpf){
				alunofound = alucpf
				break
			} 				
		}
		return alunofound		
	}
	
	// OBTER MEDIA DE ALUNO POR DISCIPLINA
	def getAlunoMediaDisciplina(Aluno alunoInstance, Disciplina disciplina){
		for(indice in disciplina.cpfMedia){
			cpf = indice[0,10] // cpf e media -> 10308591402-8.6
			media = indice[12,15]
			if(alunoInstance.cpf == cpf){
				return media
			}			
		} 
	}
}








