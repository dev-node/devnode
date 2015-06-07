class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :project, index: true, foreign_key: true
      t.string :author

      t.timestamps null: false
    end
  end
end
