class User < ApplicationRecord
  # before_action :authenticate_user!
  # protect_from_forgery prepend: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :event
  # has_many :event, foreign_key: :creator_id
  # has_many :invitations, foreign_key: :creator_id
  # has_many :attended_events, through: :invitations, source: :attended_event

  validates :email, :password, presence: true, uniqueness: true
end
