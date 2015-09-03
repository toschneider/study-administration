# set default role for new user

class ChangeRoleColumn < ActiveRecord::Migration
  def change
  	change_column :users, :role, default: "student"
  end
 #def down
 #	change_column_default :users, :role, nil
  #end
end
