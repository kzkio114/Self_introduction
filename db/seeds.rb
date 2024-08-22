# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Profile データを作成
Profile.find_or_create_by!(
  term: "50期",
  nickname: "kzkio(かずちゃん)",
  age: 32,
  hobby: "爬虫類飼育・ゲーム・アニメ",
  birthplace: "埼玉県",
  name: "伊藤  一希",
  experience: "プログラム経験は未経験です。",
  previous_job: "電気・通信関係",
  current_job: "フルコミット",
  comment: "本リリース頑張ってます！！"
)

# Question データを作成
questions_and_answers = {
  "ニックネーム" => {
    "question" => "なぜニックネームをkzkioにしたか聞きたいですか？",
    "answer" => "自分の名前が、よくある名前なので下の名前+苗字をローマ字で書いて1文字抜いて誰も被らないようにしてみました。読みづらいのでミニ自己紹介の際に、新しくニックネームを授かりました！！かずちゃんです！！"
  },
  "年齢" => {
    "question" => "具体的な生年月日も知りたいですか？",
    "answer" => "1992年1月14日生まれです。"
  },
  # "アプリ(チーム開発)" => {
  #   "question" => "アプリ(チーム開発)？見ますか？",
  #   "answer" => "チーム開発で、これを作りました！！知ってる人が多いかもしれませんが、ぜひ使ってみてください！\n
  #   \n【RUNTECKER】 https://runtecker-frontend-1bc1378eedd1.herokuapp.com/"
  # },
  # "アプリ" => {
  #   "question" => "アプリ？見ますか？",
  #   "answer" => "アプリはこんな感じです。興味があれば、ぜひ使ってみてください！
  #   \n【自己紹介アプリ】これが今回の元です。 https://self-introduction-sinatra-64122a8b4428.herokuapp.com/
  #   \n【めぐる宝石花】 https://flowerjewelring-e86d8e8259b0.herokuapp.com/
  #   \n【辰年なので、爬虫類に興味を持ちましょう！！】:https://reptile-recommend-df15caef12da.herokuapp.com/
  #   \n【Clickollector】 https://clickollector-4d5bda395d4c.herokuapp.com/
  #   \n【懐かしいものを思い出すアプリ】https://nostalgic-e3f4cba5b01a.herokuapp.com/
  #   \n 大体PCで見ることができます！"
  # },
  "趣味(爬虫類)" => {
    "question" => "どんな爬虫類を飼っているか？聞きたいですか？",
    "answer" => "アミメミズベトカゲとアストロジャイアントダイビングスキンクなどを飼ってます！他にも色々飼ってたりしました。
    \n 興味があれば、見てください クイズがあります！！
    \n https://reptile-recommend-df15caef12da.herokuapp.com/quizzes/intermediate"
  },
  "趣味(ゲーム)" => {
    "question" => "どんなゲームが好きか？聞きたいですか？",
    "answer" => "フロムソフトウェアのゲーム全般と他は、CODやバトロア系も好きです！今、ハマってるゲームは、Dark and Darker Mobileです！\n
    興味あったら、ぜひ 公式です。\n ダクモバ→ https://dndm.krafton.com/ja \n フロム → https://www.fromsoftware.jp/jp/"
  },
  "趣味(アニメ)" => {
    "question" => "どんなアニメが好きが？聞きたいですか？",
    "answer" => "アニメは、リコリス・リコイルが好きです！興味あったら、ぜひ \n 公式です。→ https://lycoris-recoil.com/"
  },
  "出身地" => {
    "question" => "埼玉県の何処の辺に住んでるか知りたいですか？",
    "answer" => "お茶の有名な所です！"
  }
}

questions_and_answers.each do |category, qa|
  Question.find_or_create_by!(
    category: category,
    question_text: qa["question"],
    answer_text: qa["answer"]
  )
end




AppList.find_or_create_by!(
  name: "自己紹介アプリ",
  language: "Sinatra",
  days: 3,
  comment: "自己紹介アプリの元です。",
  git_url: "https://github.com/user/self-introduction-app",
  app_url: "https://self-introduction-sinatra-64122a8b4428.herokuapp.com/"
)

AppList.find_or_create_by!(
  name: "辰年なので、爬虫類に興味を持ちましょう",
  event_name: "ミニアプリweek",
  language: "Ruby on Rails・javascript",
  days: 7,
  comment: "辰年なので、爬虫類に興味を持ちましょう！",
  git_url: "https://github.com/user/reptile-recommend",
  app_url: "https://reptile-recommend-df15caef12da.herokuapp.com/"
)

AppList.find_or_create_by!(
  name: "RUNTECKER",
  event_name: "RUNTEQ祭",
  language: "Ruby on Rails・React",
  comment: "チーム開発で作成したアプリです",
  app_url: "https://runtecker-frontend-1bc1378eedd1.herokuapp.com/"
)

AppList.find_or_create_by!(
  name: "Clickollector",
  event_name: "RUNTEQ祭",
  language: "Ruby on Rails・React",
  days: 7,
  comment: "クリックしてアイテムを集めるゲーム",
  git_url: "https://github.com/user/clickollector",
  app_url: "https://clickollector-4d5bda395d4c.herokuapp.com/"
)

AppList.find_or_create_by!(
  name: "懐かしいものを思い出すアプリ",
  event_name: "ミニアプリweek",
  language: "Ruby on Rails",
  days: 7,
  comment: "懐かしいものを思い出すためのアプリ。",
  git_url: "https://github.com/user/nostalgic",
  app_url: "https://nostalgic-e3f4cba5b01a.herokuapp.com/"
)

AppList.find_or_create_by!(
  name: "めぐる宝石花",
  event_name: "バトラン",
  language: "Ruby on Rails",
  comment: "循環・複合型相談アプリ",
  git_url: "https://github.com/user/flowerjewelring",
  app_url: "https://flowerjewelring-e86d8e8259b0.herokuapp.com/"
)