class CreateDevotions < ActiveRecord::Migration[7.0]
  def change
    create_table :devotions do |t|
      t.string :title
      t.text :content
      t.date :date
      t.references :created_by, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
