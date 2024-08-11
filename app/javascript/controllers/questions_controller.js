import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="questions"
export default class extends Controller {
  static targets = ["output"]

  show(event) {
    event.preventDefault()
    
    const form = event.currentTarget.closest("form")
    const url = form.action
    const formData = new FormData(form)
    
    fetch(url, {
      method: 'POST',
      headers: {
        'Accept': 'text/vnd.turbo-stream.html'
      },
      body: formData
    })
    .then(response => response.text())
    .then(html => {
      this.outputTarget.innerHTML = html
    })
  }
}