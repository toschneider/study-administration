class ChangeCycleTypeToString < ActiveRecord::Migration
  def change
  	    change_column :events, :cycle, :string
  end
end
