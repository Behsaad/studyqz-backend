class CreateQuestionLearneds < ActiveRecord::Migration
  def change
    create_table :question_learneds do |t|
      t.references :user, index: true
      t.references :question, index: true

      t.timestamps
    end
  end
end
