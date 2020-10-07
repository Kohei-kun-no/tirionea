class TweetsController < ApplicationController

 def index
 end

 def new
    @tweet = Tweet.new
 end

 def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      flash[:notice] = "ありがとうございます。正誤の判定のため、少し時間がかかります。"
      
      redirect_to :action => "new"
    else
      redirect_to :action => "new"
    end
 end

 def index
    @tweets = Tweet.all
 end

 def show
    @tweet = Tweet.find(params[:id])
 end

 def edit
    @tweet = Tweet.find(params[:id])
 end

 def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to :action => "show", :id => @tweet.id
    else
      redirect_to :action => "new"
    end
 end
 
 def destroy
    Tweet.find(params[:id]).destroy
    redirect_to action: :index
 end

 def after
 end


  private
 def tweet_params
    params.require(:tweet).permit(:body)
 end

end
