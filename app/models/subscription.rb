class Subscription < ActiveRecord::Base
  belongs_to :plan
  belongs_to :user
  belongs_to :schedule

  validates :user_id,
    presence: true
  validates :plan_id,
    presence: true
  validates :schedule_id,
    presence: true
end
