class CreateMoodboards < ActiveRecord::Migration
  def change
    create_table :moodboards do |t|

      t.timestamps
    end
  end
end
