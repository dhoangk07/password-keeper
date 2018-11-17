class AddUserIdForPasswords < ActiveRecord::Migration[5.2]
  def change
    add_column :passwords, :user_id, :integer
  end
end
