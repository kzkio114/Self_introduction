import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="layouts"
export default class extends Controller {
  static targets = ["bg"];
  static values = { timeout: Number };

  connect() {
    this.timeoutValue = this.timeoutValue || 2000;
    this.startAnimation();
  }

  startAnimation() {
    // ユーザーがこのページを訪問したことがあるかどうかをチェック
    const hasVisited = localStorage.getItem('hasVisited');

    if (!hasVisited) {
      // 初回訪問時にアニメーションを表示
      this.bgTarget.classList.add("-visible");

      setTimeout(() => {
        this.bgTarget.classList.remove("-visible");
      }, this.timeoutValue);

      // ユーザーが訪問したことを記録
      localStorage.setItem('hasVisited', 'true');
    }
  }
}
