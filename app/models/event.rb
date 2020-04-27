class Event < ApplicationRecord
  # belongs_to :user
  belongs_to :creator, class_name: :User
  has_many :invitations, foreign_key: :attended_event_id
  has_many :attendees, through: :invitations, source: :attendee

  validates :edate, :description, presence: true

  default_scope { order("created_at DESC") }
  scope :upcoming_events, -> {where("edate >= ?", DateTime.now)}
  scope :prev_events, -> {where("edate < ?", DateTime.now)}
end