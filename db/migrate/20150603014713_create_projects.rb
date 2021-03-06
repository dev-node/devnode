class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :description
      t.string :video
      t.string :repo

      t.timestamps null: false
    end
  end
end
