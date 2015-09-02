# login controller
class UserSessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      # if logged in, directed to home...alternatives?
      redirect_back_or_to(root_path, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    # if logged out, directed to home...alternatives?
    redirect_to(root_path, notice: 'Logged out!')
  end
end
