class CreateAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.string :question_id
      t.timestamps
    end
    add_index(:answer_choices, :question_id)
  end
end
# A Question has many AnswerChoices. 
# These are the options that a User can choose from
# when responding to the question. Record the text.