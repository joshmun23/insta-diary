class Plan < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions

  validates :type,
    presence: true
  validates :schedule,
    presence: true
end
