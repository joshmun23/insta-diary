class ChangeColumnScheduleOnSubscriptions < ActiveRecord::Migration
  def up
    remove_column :subscriptions, :schedule
    add_column :subscriptions, :schedule_id, :integer, null: false
  end

  def down
    add_column :subscriptions, :schedule, :string, null: false
    remove_column :subscriptions, :schedule_id
  end
end
