class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


def js_logged_in
  if(!logged_in?)
    flash[:error] = "You must be a signed in to leave a rating!"
    render :js => "window.location = '/login'"
  end
end

 
end
