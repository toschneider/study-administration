class Event < ActiveRecord::Base

	has_many :ratings


	validates_inclusion_of :cycle, :in => ['Jedes Wintersemester', 'Jedes Sommersemester', 'Jedes Semester', 'Unregelmäßig']
	validates_inclusion_of :credits, :in => 0..20
	validates_inclusion_of :sws, :in => 0..20
	validates_presence_of :prof, :title, :identifier




def avg_rating
  average_rating = 5.0
  count = 0
  ratings.each do |rating| 
    average_rating += rating.stars
    count += 1
  end
                
  if count != 0
    (average_rating / count)
  else
    count
  end
end



end
