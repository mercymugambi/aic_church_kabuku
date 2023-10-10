class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :fellowship_group
      t.boolean :baptised
      t.references :leadership_position, foreign_key: true

      t.timestamps
    end
  end
end
