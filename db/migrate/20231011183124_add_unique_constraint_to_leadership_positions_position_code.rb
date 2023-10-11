class AddUniqueConstraintToLeadershipPositionsPositionCode < ActiveRecord::Migration[7.0]
  def change
    add_index :leadership_positions, :position_code, unique: true
  end
end
