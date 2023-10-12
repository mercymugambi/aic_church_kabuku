class AddMemberIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :member_id, :bigint
    add_foreign_key :users, :members, column: :member_id, on_delete: :nullify
  end
end
