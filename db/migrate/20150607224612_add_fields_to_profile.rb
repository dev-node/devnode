class AddFieldsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :bio, :text
    add_column :profiles, :facebook, :string
    add_column :profiles, :twitter, :string
  end
end
