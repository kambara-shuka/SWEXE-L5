class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
        #@users = User.all
    end
    def new
        @tweet = Tweet.new
    end
    def create
        @tweet = Tweet.new(user_id: 1, message: params[:tweet][:message])
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
