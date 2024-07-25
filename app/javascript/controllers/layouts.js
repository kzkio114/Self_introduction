const CLASSNAME = "-visible"; // クラス名を定数に設定
const TIMEOUT = 2000; // タイムアウト時間を定数に設定
const $target = $(".bg"); // アニメーション対象の要素を変数に設定

function startAnimation() {
  setInterval(() => {
    $target.addClass(CLASSNAME); // 指定クラスを追加

    setTimeout(() => {
      $target.removeClass(CLASSNAME); // 指定クラスを削除
    }, TIMEOUT);
  }, TIMEOUT * 2);
}

document.addEventListener('turbo:load', function() {
  startAnimation(); // Turboがロードされたときにアニメーションを開始
});

// ページが最初に読み込まれたときにもアニメーションを開始
$(document).ready(function() {
  startAnimation(); // ドキュメントの読み込み完了時にアニメーションを開始
});
