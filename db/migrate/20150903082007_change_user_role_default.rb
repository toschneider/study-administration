# set the default role of new users  
class ChangeUserRoleDefault < ActiveRecord::Migration
  def change
  	change_column :users, :role, :string, default: "student"
  end
end
