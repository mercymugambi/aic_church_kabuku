class LeadershipPosition < ApplicationRecord
    validates :position_name, presence: true
    validates :position_code, uniqueness: true

    
    belongs_to :member
    belongs_to :user
  end