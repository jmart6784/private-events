class User < ApplicationRecord
  # before_action :authenticate_user!
  # protect_from_forgery prepend: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :event, foreign_key: :creator_id
  has_many :invitations, foreign_key: :attendee_id
  # has_many :attended_events, through: :invitations, source: :attended_event

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
