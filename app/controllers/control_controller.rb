class ControlController < ApplicationController

    def login
    end

    def admin
        user = User.find_by(:email => params[:email])
		if user && user.authenticate(params[:password])
			# Valid login, set the session and redirect to protected destination
			session[:current_user_id] = user.id
			redirect_to '/welcome'
		else 
			# Not a match, redirect to the login page 
			flash[:error] = "Usuario incorrecto"
            redirect_to "/login"
		end
    end

    def destroy
        session[:current_user_id] = nil
        redirect_to "/login", notice: "Sesión Cerrada!"
    end

  end
  