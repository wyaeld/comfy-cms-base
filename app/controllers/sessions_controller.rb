class SessionsController < ApplicationController

  def new
    @user_signed_in = false
  end

  def new2

  end

  def create
    binding.pry
    @user = User.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @user
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end