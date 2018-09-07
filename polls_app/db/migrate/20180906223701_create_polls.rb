class CreatePolls < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.string :title, null: false
      t.integer :author_id, null: false
      t.timestamps
    end
    add_index :polls, :author_id
  end
end
#A Poll belongs to an author (User)
# Record a title.
