class User < ActiveRecord::Base
  has_many :subscriptions
  has_many :plans, through: :subscriptions
  has_many :schedules, through: :subscriptions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
