class Event < ApplicationRecord

  belongs_to :created_by, class_name: 'User'
  # validates :image, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true

  def check_created_by
    errors.add(:base, 'Event must have a creator') if created_by.nil?
  end
end
