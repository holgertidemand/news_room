class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: :show

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    authorize @article
  end
end
