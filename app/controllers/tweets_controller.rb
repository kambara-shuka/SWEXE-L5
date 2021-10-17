class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end
    def new
        @tweet = Tweet.new
    end
    def create
        @tweet = Tweet.new(user_id: 21, message: params[:tweet][:message])
        if @tweet.save
            flash[:notice] = '1件ツイートしました'
            redirect root_path
        else
            render 'new'
        end
    end
    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        flash[:notice] = 'ツイートを削除しました'
        render 'index'
    end
end
