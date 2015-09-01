class Block < ActiveRecord::Base
	validates :name, presence: true
	validates :credits_min, :numericality => { :greater_than_or_equal_to => 0 }
end
