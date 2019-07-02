class ApplicationController < ActionController::Base
  def check_user_signed_in?
  	redirect_to new_user_session_path, error: 'You need to sign in' unless user_signed_in?
  end
end
