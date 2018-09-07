class AddBodyToAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    add_column :answer_choices, :body, :text
  end
end
