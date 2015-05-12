class Plan < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :schedules, through: :subscriptions

  validates :option,
    presence: true
end
