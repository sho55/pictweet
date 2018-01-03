class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @introduction = current_user.introduction
      @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
    end
  end

