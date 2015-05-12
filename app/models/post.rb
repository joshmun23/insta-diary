class Post < ActiveRecord::Base
  has_many :tags

  validates :ig_id,
    presence: true,
    numericality: true
  validates :post_id,
    presence: true,
    numericality: true,
    uniqueness: true
  validates :username,
    presence: true
  validates :created_time,
    presence: true,
    numericality: true
  validates :media,
    presence: true
end
