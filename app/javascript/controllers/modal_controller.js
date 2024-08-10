import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["container"];

  open() {
    this.containerTarget.classList.add("is-active");
  }

  close() {
    this.containerTarget.classList.remove("is-active");
  }
}