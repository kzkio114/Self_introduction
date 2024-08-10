import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="anime"
export default class extends Controller {
  static targets = ["animeBg"];
  static values = { timeout: { type: Number, default: 1000 } };

  connect() {
    this.startAnimation();
  }

  startAnimation() {
    // 黒いブロックを左から右に広げる
    this.animeBgTarget.classList.add("-visible");

    // 200pxに広がった後、左から右に縮める
    setTimeout(() => {
      this.animeBgTarget.classList.remove("-visible");
      this.animeBgTarget.classList.add("-shrink");
    }, this.timeoutValue);
  }
}
