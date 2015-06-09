class AddLinksToProject < ActiveRecord::Migration
  def change
    add_column :projects, :facebook, :string
    add_column :projects, :twitter, :string
    add_column :projects, :trello, :string
  end
end
