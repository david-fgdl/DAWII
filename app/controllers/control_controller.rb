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

    def signup
    end

    def registro
        @user=User.new({:name => user_params[:name], :email => user_params[:email], :password => user_params[:pwd] })
        @user.hash_password
        if @user.save
            flash[:notice] = "Usuario creado correctamente"
            redirect_to "/login"
        else
            flash[:error] = "Error en la creación del usuario"
            redirect_to "/signup"
        end
    end

    private
    def user_params
        params.permit(:name, :email, :pwd, :pwdr)
      end
  end
 