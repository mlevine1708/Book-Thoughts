class SessionsController < ApplicationController

    def new
        @user = User.new
        render :login
    end

    def create
        @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to books_path
        else
            redirect_to :login 
        end
    end

    def home
    end

    def destroy
        session.clear
        redirect_to '/'
    end

end
