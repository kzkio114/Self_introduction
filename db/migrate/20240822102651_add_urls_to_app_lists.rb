class AddUrlsToAppLists < ActiveRecord::Migration[7.1]
  def change
    add_column :app_lists, :git_url, :string
    add_column :app_lists, :app_url, :string
  end
end
