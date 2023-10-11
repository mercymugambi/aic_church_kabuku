class CreateLeadershipPositions < ActiveRecord::Migration[7.0]
  def change
    create_table :leadership_positions do |t|
      t.string :position_name
      t.text :description
      t.string :position_code

      t.timestamps
    end
  end
end
