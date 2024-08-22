class ChangeDaysNullInAppLists < ActiveRecord::Migration[7.1]
  def change
    change_column_null :app_lists, :days, true
  end
end
