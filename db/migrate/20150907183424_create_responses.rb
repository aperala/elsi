class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :body
      t.integer :user_id, null: false
      t.integer :passage_id, null: false

      t.timestamps null: false
    end
  end
end
