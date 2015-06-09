class AddVideothumbToProject < ActiveRecord::Migration
  def change
    add_column :projects, :video_thumb, :string
  end
end
