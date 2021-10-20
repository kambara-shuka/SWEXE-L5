class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end
    def new
        @tweet = Tweet.new
    end
    def create
        user = User.find_by(uid: session[:login_uid])
        @tweet = Tweet.new(user_id: user.id, message: params[:tweet][:message])
        if @tweet.save
            flash[:notice] = '1件ツイートしました'
            redirect_to root_path
        else
            render 'new'
        end
    end
    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        flash[:notice] = 'ツイートを削除しました'
        redirect_to root_path
    end
end
