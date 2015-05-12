class Schedule < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :plans, through: :subscriptions

  validates :option,
    presence: true
end
