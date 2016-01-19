package br.ufrpe.uag



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EstatisticaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Estatistica.list(params), model:[estatisticaInstanceCount: Estatistica.count()]
    }

    def show(Estatistica estatisticaInstance) {
        respond estatisticaInstance
    }

    def create() {
        respond new Estatistica(params)
    }

    @Transactional
    def save(Estatistica estatisticaInstance) {
        if (estatisticaInstance == null) {
            notFound()
            return
        }

        if (estatisticaInstance.hasErrors()) {
            respond estatisticaInstance.errors, view:'create'
            return
        }

        estatisticaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'estatistica.label', default: 'Estatistica'), estatisticaInstance.id])
                redirect estatisticaInstance
            }
            '*' { respond estatisticaInstance, [status: CREATED] }
        }
    }

    def edit(Estatistica estatisticaInstance) {
        respond estatisticaInstance
    }

    @Transactional
    def update(Estatistica estatisticaInstance) {
        if (estatisticaInstance == null) {
            notFound()
            return
        }

        if (estatisticaInstance.hasErrors()) {
            respond estatisticaInstance.errors, view:'edit'
            return
        }

        estatisticaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Estatistica.label', default: 'Estatistica'), estatisticaInstance.id])
                redirect estatisticaInstance
            }
            '*'{ respond estatisticaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Estatistica estatisticaInstance) {

        if (estatisticaInstance == null) {
            notFound()
            return
        }

        estatisticaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Estatistica.label', default: 'Estatistica'), estatisticaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'estatistica.label', default: 'Estatistica'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
