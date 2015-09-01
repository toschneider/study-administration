class Block < ActiveRecord::Base

 validates :gesamtects, :numericality => { :greater_than_or_equal_to => 0}
 validates_presence_of :name, :gesamtects
 validates :credits_min, :numericality => { :greater_than_or_equal_to => 0 }

end
