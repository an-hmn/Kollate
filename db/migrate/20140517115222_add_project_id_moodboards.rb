class AddProjectIdMoodboards < ActiveRecord::Migration
  def change
    add_column :moodboards, :project_id, :integer
    add_index :moodboards, :project_id
  end
end
