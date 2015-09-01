class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :events, :event_id, :identifier
  end
end
