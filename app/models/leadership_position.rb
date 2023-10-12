class LeadershipPosition < ApplicationRecord
    validates :position_name, presence: true
    validates :position_code, uniqueness: true

    has_many :members
    belongs_to :created_by, class_name: 'User'
  end