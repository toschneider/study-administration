class Event < ActiveRecord::Base
	validates_inclusion_of :cycle, :in => ['Jedes Wintersemester', 'Jedes Sommersemester', 'Jedes Semester', 'Unregelmäßig']
	validates_inclusion_of :credits, :in => 0..20
	validates_inclusion_of :sws, :in => 0..20
	validates_presence_of :prof, :title, :identifier
	has_and_belongs_to_many :blocks
end
