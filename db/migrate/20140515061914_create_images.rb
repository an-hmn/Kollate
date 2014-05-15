class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :image
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
