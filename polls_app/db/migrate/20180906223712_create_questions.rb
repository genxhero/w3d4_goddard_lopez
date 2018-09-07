class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :body
      t.integer :poll_id, null: false
      t.timestamps
    end
  end
end
#A Poll has many Questions. Record the text.