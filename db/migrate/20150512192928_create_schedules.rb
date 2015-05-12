class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :option, null: false
    end
end
