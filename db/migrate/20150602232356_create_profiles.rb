class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :image
      t.string :github
      t.string :website

      t.timestamps null: false
    end
  end
end
