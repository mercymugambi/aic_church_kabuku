class Member < ApplicationRecord

 belongs_to :leadership_position, class_name: "LeadershipPosition"
 has_and_belongs_to_many :fellowship_groups
end
