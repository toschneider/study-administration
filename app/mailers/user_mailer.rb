class UserMailer < ApplicationMailer
	default from: 'dbp2015studyproject@gmx.de'

	def welcome_email(user)
		@user = user
		@url  = 'http:/localhost:3000/login'
		mail(to: @user.email, subject: 'Willkommen!')
	end
end
