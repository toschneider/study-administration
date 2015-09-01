class Block < ActiveRecord::Base
<<<<<<< HEAD
 validates :gesamtects, :numericality => { :greater_than_or_equal_to => 0}
 validates_presence_of :name, :gesamtects
=======
	validates :name, presence: true
	validates :credits_min, :numericality => { :greater_than_or_equal_to => 0 }
>>>>>>> d62b09217e1b6234e79f306f41a787e393fc09b9
end
