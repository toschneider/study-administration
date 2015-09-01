class CreateBlocksEvents < ActiveRecord::Migration
  def change
    create_table :blocks_events do |t|
    	t.references :block
    	t.references :event
    end
  end
end
