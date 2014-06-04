class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :facebookid
      t.integer :boosts
      t.integer :jokers
      t.integer :xp
      t.references :university, index: true
      t.references :subject, index: true

      t.timestamps
    end
  end
end
