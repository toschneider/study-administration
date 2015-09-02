# set default role for new user

class ChangeRoleColumn < ActiveRecord::Migration
  def default_role
  	change_column :users, :role, :default => "student"
  end
end
