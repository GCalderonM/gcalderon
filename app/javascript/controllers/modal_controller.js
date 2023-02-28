import { Controller } from '@hotwired/stimulus'
import { enter, leave } from 'el-transition'

export default class extends Controller {
    static targets = ['modalWrapper', 'modalBackdrop', 'modalPanel']

    connect() {
        enter(this.modalWrapperTarget)
        enter(this.modalBackdropTarget)
        enter(this.modalPanelTarget)
    }

    closeModal() {
        leave(this.modalWrapperTarget)
        leave(this.modalBackdropTarget)
        leave(this.modalPanelTarget)
    }

    handleKeyup(e) {
        if (e.code == "Escape") {
            this.closeModal()
        }
    }

    submitEnd(e) {
        if (e.detail.success) this.closeModal()
    }
}
