class TweetsController < ApplicationController
  # before_filter :redirect_unless_logged_in

  def index
    @tweets = Tweet.all
    @tweet  = Tweet.new
    render "index", layout: true
  end

  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new do |t|
      t.tweet = params[:tweet][:tweet]
    end
    if tweet.save
      redirect_to root_path
    end
  end

end
