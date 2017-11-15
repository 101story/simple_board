class TweetsController < ApplicationController
  def index
    @tweets=Tweet.all
  end

  def new
    
  end

  def create
    Tweet.create(
      content: params[:content]
    )
    redirect_to '/tweets/index'
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(
      content: params[:content]
      )
    redirect_to :root
  end

  def destory
    @tweet = Tweet.find(params[:id])
    @tweet.destory
    redirect_to '/tweet/index' #root
  end

  def show
  end
end
