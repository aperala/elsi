class AddIndexToPassages < ActiveRecord::Migration
  def change
    add_index :passages, :user_id, name: "index_posts_on_user_id"
  end
end
