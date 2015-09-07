class AddDetailToPassages < ActiveRecord::Migration
  def change
    change_column_null :passages, :user_id, false
  end
end
