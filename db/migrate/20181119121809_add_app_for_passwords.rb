class AddAppForPasswords < ActiveRecord::Migration[5.2]
  def change
    add_column :passwords, :app, :string
  end
end
