class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    if params[:random]
      @article = Article.rnd
      redirect_to @article
    else
      @article = Article.find(params[:id])
    end
  end

  def new
    @article = Article.new
  end

  def destroy
    @article = Article.find(params[:id])
    @article.delete
    redirect_to articles_path
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.update(params[:id], article_params)
    if @article.save
      redirect_to @article
    else
      render 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
