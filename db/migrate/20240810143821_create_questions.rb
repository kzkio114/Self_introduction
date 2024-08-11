class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :category
      t.text :question_text
      t.text :answer_text

      t.timestamps
    end
  end
end
