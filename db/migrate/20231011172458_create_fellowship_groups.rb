class CreateFellowshipGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :fellowship_groups do |t|
      t.string :group_name
      t.references :created_by, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
