class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @tweets = Tweet.all.order(created_at: "DESC")
    end
  end
end