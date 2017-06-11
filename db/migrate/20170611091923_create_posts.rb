class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :imagekey
      t.string :description
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
