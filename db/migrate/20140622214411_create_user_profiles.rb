class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :xp
      t.references :university, index: true
      t.references :subject, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
