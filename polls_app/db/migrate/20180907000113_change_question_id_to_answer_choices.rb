class ChangeQuestionIdToAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    remove_column :answer_choices, :question_id, :string
    add_column :answer_choices, :question_id, :integer
  end
end
