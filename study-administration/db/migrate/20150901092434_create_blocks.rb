class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :name
      t.integer :gesamtects
      t.integer :credits_min
      t.timestamps null: false
    end
  end
end
