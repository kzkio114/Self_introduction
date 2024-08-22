class CreateAppList < ActiveRecord::Migration[7.1]
  def change
    create_table :app_lists do |t|
      t.string :name, null: false
      t.string :language, null: false
      t.integer :days, null: false
      t.string :comment

      t.timestamps
    end
  end
end
