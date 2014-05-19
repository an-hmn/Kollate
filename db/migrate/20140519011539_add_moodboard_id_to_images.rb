class AddMoodboardIdToImages < ActiveRecord::Migration
  def change
  	add_column :images, :moodboard_id, :integer
  end
end
