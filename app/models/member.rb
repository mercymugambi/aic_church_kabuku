class Member < ApplicationRecord
    validates :firstname 

 belongs_to :leadership_position, class_name: "LeadershipPosition"
end
