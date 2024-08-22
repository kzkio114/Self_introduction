class AddDetailsToProfiles < ActiveRecord::Migration[7.1]
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :experience, :text
    add_column :profiles, :previous_job, :string
    add_column :profiles, :current_job, :string
    add_column :profiles, :comment, :string
  end
end
