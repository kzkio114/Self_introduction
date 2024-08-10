import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["bg"];
  static values = { timeout: Number };

  connect() {
    this.timeoutValue = 2000;
    this.startAnimation();
  }

  startAnimation() {
    setInterval(() => {
      this.bgTarget.classList.add("-visible");

      setTimeout(() => {
        this.bgTarget.classList.remove("-visible");
      }, this.timeoutValue);
    }, this.timeoutValue * 2);
  }
}