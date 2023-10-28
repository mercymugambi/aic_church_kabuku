class CreateFellowshipGroupsMembersJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :fellowship_groups, :members do |t|
      t.index [:fellowship_group_id, :member_id], name: 'index_fg_members_on_fg_id_and_member_id'
      t.index [:member_id, :fellowship_group_id], name: 'index_fg_members_on_member_id_and_fg_id'
    end
end
end
