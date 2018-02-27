class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: :show

  def index
    @articles = Article.all
  end

  def show
    begin
      @article = Article.find(params[:id])
      authorize @article
    rescue Pundit::NotAuthorizedError
      flash[:notice] = 'You need to be a subscriber to access this content'
      redirect_to new_subscription_path
    end
  end
end
