class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :lecturer
      t.integer :semester
      t.references :subject, index: true
      t.references :university, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
