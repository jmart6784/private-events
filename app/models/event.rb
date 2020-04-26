class Event < ApplicationRecord
  # belongs_to :user
  belongs_to :creator, class_name: :User
  has_many :invitations, foreign_key: :attended_event_id
  has_many :attendees, through: :invitations, source: :attendee

  validates :edate, :description, presence: true
end