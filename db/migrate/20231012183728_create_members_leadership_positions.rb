class CreateMembersLeadershipPositions < ActiveRecord::Migration[7.0]
  def change
    create_table :members_leadership_positions, id: false do |t|
      t.bigint :member_id
      t.bigint :leadership_position_id
    end

    add_index :members_leadership_positions, [:member_id, :leadership_position_id], unique: true, name: 'index_member_positions'


  end
end
