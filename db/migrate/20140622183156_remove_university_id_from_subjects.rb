class RemoveUniversityIdFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :university_id, :integer
  end
end
