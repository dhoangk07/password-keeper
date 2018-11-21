class AddUserIdForKnowledges < ActiveRecord::Migration[5.2]
  def change
    add_column :knowledges, :user_id, :integer
  end
end
