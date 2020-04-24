class Event < ApplicationRecord
  belongs_to :user
  # belongs_to :creator, class_name: :user
  # has_many :attendees, through: :invitations, source: :attendee
  # has_many :attendees, through: :invitations, sourec: :attendee

  validates :edate, presence: true
end
