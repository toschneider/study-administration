class Block < ActiveRecord::Base
 validates_presence_of :name, :events
 validates :credits_min, :numericality => { :greater_than_or_equal_to => 0 }
 has_and_belongs_to_many :events
 has_and_belongs_to_many :courses
end
