class TopsController < ApplicationController
    def main
        if session[:login_uid]
            render 'login'
        end
    end
    
    def login
        user = User.find_by(uid: params[:uid])
        login_password = BCrypt::Password.new(user.pass)
        if login_password == params[:pass]
            session[:login_uid] = params[:uid]
            redirect_to root_path
        else
            render 'login_failed'
        end
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
end
