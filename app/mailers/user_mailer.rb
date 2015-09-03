class UserMailer < ApplicationMailer
<<<<<<< HEAD
	default from: 'dbp2015studyproject@gmx.de'

	def welcome_email(user)
		@user = user
		@url  = 'http:/localhost:3000/login'
		mail(to: @user.email, subject: 'Willkommen!')
	end
=======
 default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/users/new'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

>>>>>>> c386c72ced64d5fa2ce7e778207d798c627a474d
end
