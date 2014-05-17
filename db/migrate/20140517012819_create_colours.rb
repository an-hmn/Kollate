class CreateColours < ActiveRecord::Migration
  def change
    create_table :colours do |t|
      t.string :hexcode
    end
  end
end