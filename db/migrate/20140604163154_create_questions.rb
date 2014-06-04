class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :course, index: true
      t.string :question
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.boolean :answer1correct
      t.boolean :answer2correct
      t.boolean :answer3correct
      t.string :explanation
      t.string :linkurl
      t.string :linkname
      t.references :user, index: true

      t.timestamps
    end
  end
end
