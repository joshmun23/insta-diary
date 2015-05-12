class RemoveColumnPlans < ActiveRecord::Migration
  def up
    remove_column :plans, :schedule
    add_column :subscriptions, :schedule, :string, null: false
  end

  def down
    add_column :plans, :schedule, :string, null: false
    remove_column :subscriptions, :schedule
  end
end
