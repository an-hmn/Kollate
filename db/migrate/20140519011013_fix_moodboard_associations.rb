class FixMoodboardAssociations < ActiveRecord::Migration
  def change
  	add_column :moodboards, :project_id, :integer
  	remove_column :projects, :moodboard_id
  end
end
