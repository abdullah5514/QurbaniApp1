class Droppost < ActiveRecord::Migration[5.0]
  def change
  	drop_table :posts do |t|
      t.string :imagekey, null: false
      t.string :description, null: false
      t.string :category, null: false
      t.string :user_id, null: false
      t.timestamps null: false
    end
  end
end
