class Member < ApplicationRecord
  has_one :user
  belongs_to :leadership_position, class_name: 'LeadershipPosition', optional: true
  has_and_belongs_to_many :leadership_positions, join_table: 'members_leadership_positions'
  has_and_belongs_to_many :fellowship_groups
end
