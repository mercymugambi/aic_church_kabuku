class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :firstname, presence: true
  validates :lastname, presence: true

  belongs_to :member
  has_many :devotions
  has_many :created_fellowship_groups, class_name: 'FellowshipGroup', foreign_key: 'created_by_id'
  has_many :created_events, class_name: 'Event', foreign_key: 'created_by_id'
  has_many :created_devotions, class_name: 'Devotion', foreign_key: 'created_by_id'
end
