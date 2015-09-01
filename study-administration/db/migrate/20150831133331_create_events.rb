class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_id
      t.string :title
      t.string :description
      t.string :prof
      t.integer :credits
      t.integer :sws
      t.integer :cycle
      t.string :next
      t.string :exam_type
      t.string :condition

      t.timestamps null: false
    end
  end
end
