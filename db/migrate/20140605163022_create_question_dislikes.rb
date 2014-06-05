class CreateQuestionDislikes < ActiveRecord::Migration
  def change
    create_table :question_dislikes do |t|
      t.references :user, index: true
      t.references :question, index: true

      t.timestamps
    end
  end
end
