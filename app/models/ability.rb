class Ability
  include CanCan::Ability

  def initialize(user)
 
   # Define abilities for the passed in user here
    
     user ||= User.new # guest user (not logged in)
        if user.role=="admin"
         can :manage, :all
        end
        if user.role=="student"
        can :read, :all
        can :destroy,  :user_id => user.id
        end
        if user.role=="guest"
         cannot :create, Event 
         cannot :edit, :all
         cannot :destroy, :all
        end
  end
end

