class AddTermToProfiles < ActiveRecord::Migration[7.1]
  def change
    add_column :profiles, :term, :string
  end
end
