class ChangeScheduleColumnOnPlans < ActiveRecord::Migration
  def up
    change_column :plans, :schedule, :string
  end
  def down
    change_column :plans, :schedule, :integer
  end
end
