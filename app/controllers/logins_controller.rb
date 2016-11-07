class LoginsController < ApplicationController
  def login
  end

  def create
    user = USERS[params[:username].to_sym]
    if user
      if user[:password] == params[:password]
        session[:current_user_id] = user[:id]
        session[:scores] = []
        redirect_to game_path
      end
    else
        redirect_to login_path
    end
  end

  def destroy
   session[:current_user_id] = nil
   redirect_to root_url
  end

end
