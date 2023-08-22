class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def login
  end

  def welcome
  end

  def create
    @admin = Admin.find_by(email: params[:email])
    if @admin && @admin.authenticate(params[:password])
      session[:admin_id] = @admin.id
      redirect_to users_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete(:admin_id)
    redirect_to '/logout'
  end
end
