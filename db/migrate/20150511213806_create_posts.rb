class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :ig_id, null: false
      t.integer :post_id, null: false, unique: true
      t.integer :tag_id
      t.string :username, null: false
      t.integer :created_time, null: false
      t.string :media, null: false
    end
  end
end
