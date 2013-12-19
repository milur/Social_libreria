class ApplicationController < ActionController::Base
  helper_method :current_user
  
  def authenticate
    if current_user.nil?
      flash[:notice] = "Fatti riconoscere"
      redirect_to login_path
    end
  end
  
  def current_user
    if session[:utente_id]
      @current_user ||= Utente.find(session[:utente_id]) 
    end
  end
end
