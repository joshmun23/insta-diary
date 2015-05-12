class RenameColumnTypeOnPlans < ActiveRecord::Migration
  def change
    rename_column :plans, :type, :option
  end
end
