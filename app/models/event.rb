class Event < ActiveRecord::Base


	has_many :ratings
  has_and_belongs_to_many :blocks
  
	validates_inclusion_of :cycle, :in => ['Jedes Wintersemester', 'Jedes Sommersemester', 'Jedes Semester', 'Unregelmäßig']
	validates_inclusion_of :credits, :in => 0..20
	validates_inclusion_of :sws, :in => 0..20
	validates_presence_of :prof, :title, :identifier





def avg_rating
  average_rating = 0.0
  count = 0
  ratings.each do |rating| 
    if rating.stars != nil
      average_rating += rating.stars
      count += 1
    end
  end
                
  if count != 0
    puts "check"
    (average_rating / count)
  else
    count
  end
end






end
