class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  belongs_to :member, optional: true  # Allow member to be optional
  has_many :devotions
  has_and_belongs_to_many :leadership_positions, through: :member
  has_many :created_fellowship_groups, class_name: 'FellowshipGroup', foreign_key: 'created_by_id'
  has_many :created_events, class_name: 'Event', foreign_key: 'created_by_id'
  has_many :created_devotions, class_name: 'Devotion', foreign_key: 'created_by_id'

 # Define the check_leadership_position method to validate presence of leadership_position
 validate :check_leadership_position

#  validate :super_admin_without_member and leadership_role
def check_leadership_position
  if !super_admin? && (member.nil? || member.leadership_positions.empty?)
    errors.add(:base, 'User must have a leadership position and be a member')
  end
end

end
