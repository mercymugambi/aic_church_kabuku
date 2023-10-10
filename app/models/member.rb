class Member < ApplicationRecord

 belongs_to :leadership_position, class_name: "LeadershipPosition"
end
