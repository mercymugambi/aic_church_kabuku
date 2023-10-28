class LeadershipPosition < ApplicationRecord
  validates :position_name, presence: true
  validates :position_code, uniqueness: true

  has_many :members
  belongs_to :created_by, class_name: 'User'
  has_and_belongs_to_many :members, join_table: 'members_leadership_positions'
end
