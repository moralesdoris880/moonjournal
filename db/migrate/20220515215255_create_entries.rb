class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.string :mood
      t.text :body
      t.timestamps
    end
  end
end
