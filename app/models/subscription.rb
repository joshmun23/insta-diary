class Subscription < ActiveRecord::Base
  belongs_to :plan
  belongs_to :user

  validates :user,
    presence: true
  validates :plan,
    presence: true
end
