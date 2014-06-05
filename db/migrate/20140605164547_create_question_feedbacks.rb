class CreateQuestionFeedbacks < ActiveRecord::Migration
  def change
    create_table :question_feedbacks do |t|
      t.references :user, index: true
      t.references :question, index: true
      t.string :message

      t.timestamps
    end
  end
end
