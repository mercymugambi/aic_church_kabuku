class FellowshipGroup < ApplicationRecord
  belongs_to :created_by, class_name: 'User'
  has_and_belongs_to_many :members
end
