class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :choice_id, null: false
      t.integer :user_id, null: false
    end
    add_index(:responses, :choice_id)
    add_index(:responses, :user_id)
  end
end
# A User answers to a Questions by choosing 
# an AnswerChoice.
# What pair of foreign keys will you need?