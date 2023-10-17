class Devotion < ApplicationRecord
  
  belongs_to :created_by, class_name: 'User'

  validate :check_created_by

  def check_created_by
    errors.add(:base, 'Devotion must have a creator') if created_by.nil?
  end
end
