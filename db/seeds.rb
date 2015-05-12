# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

plans = %w{diet exercise smoking}

plans.each do |plan|
  new_plan = Plan.new
  new_plan.option = plan
  new_plan.save
end

schedules = %w{week 2-week month 3-months 6-months year}

schedules.each do |schedule|
  new_schedule = Schedule.new
  new_schedule.option = schedule
  new_schedule.save
end
