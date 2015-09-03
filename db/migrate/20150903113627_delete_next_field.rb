class DeleteNextField < ActiveRecord::Migration
 def change
  	remove_column :events, :next
  end
end