import { Controller } from '@hotwired/stimulus'
import { toggle } from 'el-transition'

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ['openMenu', 'mode', 'modeMobile']

  connect() {
    this.openMenuTarget.addEventListener('click', this.toggleMenu)
    this.modeTarget.addEventListener('click', this.toggleMode)
    this.modeMobileTarget.addEventListener('click', this.toggleMode)
  }

  toggleMenu() {
    toggle(document.getElementById('navbar-menu'))
  }

  toggleMode() {
    if (document.getElementsByTagName('html')[0].classList.contains('dark')) {
      document.getElementsByTagName('html')[0].classList.remove('dark')
    } else {
      document.getElementsByTagName('html')[0].classList.add('dark')
    }
  }
}
