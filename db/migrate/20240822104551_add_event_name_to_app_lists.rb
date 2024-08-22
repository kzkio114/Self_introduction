class AddEventNameToAppLists < ActiveRecord::Migration[7.1]
  def change
    add_column :app_lists, :event_name, :string
  end
end
