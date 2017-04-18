class EventParticipation < ActiveRecord::Base
  belongs_to :event
  belongs_to :member

  before_save { self.cancelled = false if cancelled.blank?; true }
end
