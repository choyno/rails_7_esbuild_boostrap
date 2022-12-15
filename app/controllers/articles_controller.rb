class ArticlesController < ApplicationController

  before_action :set_article, only: [:edit, :update, :destroy]

  def index
    @articles = Article.all.reverse
  end

  def edit; end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Successfully save"
      redirect_to root_path
    else
      render new_article_path
    end
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Successfully Updated"
      redirect_to root_path
    else
      render "edit"
    end
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Successfully Updated"
      redirect_to root_path
    else
      render "edit"
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
