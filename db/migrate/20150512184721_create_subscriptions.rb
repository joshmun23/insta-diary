class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id, null: false
      t.integer :plan_id, null: false
    end

    add_index :subscriptions, [:user_id, :plan_id], unique: true
  end
end
