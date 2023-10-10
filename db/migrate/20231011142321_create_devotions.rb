class CreateDevotions < ActiveRecord::Migration[7.0]
  def change
    create_table :devotions do |t|
      t.string :title
      t.text :content
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
