class CreateMoodboards < ActiveRecord::Migration
  def change
    create_table :moodboards do |t|
      t.integer :project_id
      t.timestamps
    end
  end
end
