class CreateKnowledges < ActiveRecord::Migration[5.2]
  def change
    create_table :knowledges do |t|
      t.string :content
      t.string :title

      t.timestamps
    end
  end
end
