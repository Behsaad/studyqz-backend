class RemoveXpUniversityIdSubjectIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :university_id, :integer
    remove_column :users, :subject_id, :integer
    remove_column :users, :xp, :integer
  end
end
