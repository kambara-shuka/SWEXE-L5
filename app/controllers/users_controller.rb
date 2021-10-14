class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(uid: params[:user][:uid])
        if @user.save
            flash[:notice] = '1件登録しました'
            redirect_to '/'
        else
            render 'new'
        end
    end
    def destroy
        user = User.find(params[:id])
        user.destroy
        flash[:notice] = 'ツイートを削除しました'
        redirect_to '/'
    end
end
