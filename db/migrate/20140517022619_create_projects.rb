class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :brief
      t.date :deadline
      t.text :sidenotes
      t.string :client
      t.timestamps
    end
  end
end