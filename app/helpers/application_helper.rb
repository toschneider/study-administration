module ApplicationHelper

	def getBirthDateStart()
		Time.now.year - 100
	end
	
	def getBirthDateEnd()
		Time.now.year
	end		

end
