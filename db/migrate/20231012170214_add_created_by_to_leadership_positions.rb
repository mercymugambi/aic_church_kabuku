class AddCreatedByToLeadershipPositions < ActiveRecord::Migration[7.0]
  def change
    add_reference :leadership_positions, :created_by, references: :users, index: true
  end
end
