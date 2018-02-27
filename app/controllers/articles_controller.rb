class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    if !current_user
      flash[:error] = 'You need to be logged in to access this content'
      redirect_to root_path
    elsif !current_user.subscriber?
      flash[:error] = 'You need to be a subscriber to access this content'
      redirect_to new_subscription_path
    else
      render :show
    end
  end
end
