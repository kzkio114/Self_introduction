class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :nickname
      t.integer :age
      t.string :hobby
      t.string :birthplace

      t.timestamps
    end
  end
end
