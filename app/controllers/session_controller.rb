class SessionController < ApplicationController
  def new
  end
  def create 
    user = Utente.authenticate(params[:email],params[:password])
    if user
      session[:utente_id] = user.id
      flash[:notice] = "Bentornato #{user.nome}!"
      redirect_to root_url 
    else
       flash[:notice] = "Username o password errata!"
      render "new"
    end 
  end
  def destroy
    session[:utente_id] = nil
    flash[:notice] = "bye!"
    redirect_to root_url
  end
end
