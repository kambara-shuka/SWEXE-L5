class UsersController < ApplicationController
require 'bcrypt'
    def index
        @users = User.all
    end
    def new
        @user = User.new
    end
    def create
        signup_password = BCrypt::Password.create(pass: params[:user][:pass])
        @user = User.new(uid: params[:user][:uid], pass: signup_password)
        
        if @user.save
            flash[:notice] = '1件登録しました'
            redirect_to root_path
        else
            render 'new'
        end
    end
    def destroy
        user = User.find(params[:id])
        user.destroy
        flash[:notice] = 'ツイートを削除しました'
        redirect_to root_path
    end
end
