class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :type, null: false
      t.integer :schedule, null: false
    end
  end
end
