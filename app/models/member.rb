class Member < ApplicationRecord

 has_one :user 
 belongs_to :leadership_position, class_name: "LeadershipPosition", optional: true
 has_and_belongs_to_many :fellowship_groups

end
