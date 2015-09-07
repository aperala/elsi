class CreatePassages < ActiveRecord::Migration
  def change
    create_table :passages do |t|
      t.string :title
      t.string :author
      t.text :body
      t.string :link
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
