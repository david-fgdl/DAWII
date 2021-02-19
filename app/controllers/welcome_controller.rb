class WelcomeController < ApplicationController

  before_action :require_login
  def require_login
    current_user = User.find_by(:id => session[:current_user_id])
    if !current_user 
      flash[:error] = "Debe iniciar sesión para acceder a este contenido"
      redirect_to '/login'
    end
  end

  def index
  end

end
