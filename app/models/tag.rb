class Tag < ActiveRecord::Base
  belongs_to :post

  validates :name, presence: true
  validates :post, presence: true
end
