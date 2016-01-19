package br.ufrpe.uag



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PeriodoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Periodo.list(params), model:[periodoInstanceCount: Periodo.count()]
    }

    def show(Periodo periodoInstance) {
        respond periodoInstance
    }

    def create() {
        respond new Periodo(params)
    }

    @Transactional
    def save(Periodo periodoInstance) {
        if (periodoInstance == null) {
            notFound()
            return
        }

        if (periodoInstance.hasErrors()) {
            respond periodoInstance.errors, view:'create'
            return
        }

        periodoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'periodo.label', default: 'Periodo'), periodoInstance.id])
                redirect periodoInstance
            }
            '*' { respond periodoInstance, [status: CREATED] }
        }
    }

    def edit(Periodo periodoInstance) {
        respond periodoInstance
    }

    @Transactional
    def update(Periodo periodoInstance) {
        if (periodoInstance == null) {
            notFound()
            return
        }

        if (periodoInstance.hasErrors()) {
            respond periodoInstance.errors, view:'edit'
            return
        }

        periodoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Periodo.label', default: 'Periodo'), periodoInstance.id])
                redirect periodoInstance
            }
            '*'{ respond periodoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Periodo periodoInstance) {

        if (periodoInstance == null) {
            notFound()
            return
        }

        periodoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Periodo.label', default: 'Periodo'), periodoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'periodo.label', default: 'Periodo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
