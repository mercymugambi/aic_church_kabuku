class AddGroupCodeToFellowshipGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :fellowship_groups, :group_code, :string

    add_index :fellowship_groups, :group_code, unique: true
  end
end
