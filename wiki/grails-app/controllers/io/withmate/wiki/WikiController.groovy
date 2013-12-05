package io.withmate.wiki



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class WikiController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Wiki.list(params), model:[wikiInstanceCount: Wiki.count()]
    }

    def show(Wiki wikiInstance) {
        respond wikiInstance
    }

    def create() {
        respond new Wiki(params)
    }

    @Transactional
    def save(Wiki wikiInstance) {
        if (wikiInstance == null) {
            notFound()
            return
        }

        if (wikiInstance.hasErrors()) {
            respond wikiInstance.errors, view:'create'
            return
        }

        wikiInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'wikiInstance.label', default: 'Wiki'), wikiInstance.id])
                redirect wikiInstance
            }
            '*' { respond wikiInstance, [status: CREATED] }
        }
    }

    def edit(Wiki wikiInstance) {
        respond wikiInstance
    }

    @Transactional
    def update(Wiki wikiInstance) {
        if (wikiInstance == null) {
            notFound()
            return
        }

        if (wikiInstance.hasErrors()) {
            respond wikiInstance.errors, view:'edit'
            return
        }

        wikiInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Wiki.label', default: 'Wiki'), wikiInstance.id])
                redirect wikiInstance
            }
            '*'{ respond wikiInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Wiki wikiInstance) {

        if (wikiInstance == null) {
            notFound()
            return
        }

        wikiInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Wiki.label', default: 'Wiki'), wikiInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'wikiInstance.label', default: 'Wiki'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
