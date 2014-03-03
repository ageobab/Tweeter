class TweetsController < ApplicationController
  
  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save 
      redirect_to user_path(current_user)
    else 
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @tweet.destroy
    redirect_to user_path(current_path), notice: "That tweet was removed."
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :user_id)
  end

end

