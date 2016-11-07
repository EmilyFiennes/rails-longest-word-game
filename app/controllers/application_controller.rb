class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    USERS = {
     emily:
      {id: 1, password: 'secret'},
     pierre:
     {id: 2, password: 'secret2'}
    }


private
  # def current_user
  #   session[:current_user_id] &&
  #   USERS.find_by(id: session[:current_user_id])
  # end
end
