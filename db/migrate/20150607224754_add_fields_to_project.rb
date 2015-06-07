class AddFieldsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :fulldescription, :text
    add_column :projects, :languages, :text
  end
end
