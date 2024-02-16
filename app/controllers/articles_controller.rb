class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :destroy]
  around_action :method_name

  def method_name
    #BEFORE ACTION LOGIC HERE
    yield #calls controller action
    #after action logic here
  end

  def index
    #CRUD Operations
    @articles = Article.all
  end

  def show
    set_article
    # @article = Article.find(params[:id])

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  #edit
  def edit
    set_article
  end

  #update
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  #delete
  def destroy
    @article = Article.find(params[:id])
    @article.destroy!

    redirect_to articles_path, notice: "Article #{@article.id} was successfully destroyed.", status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

    def set_article
      @article = Article.find(params[:id])
    end

end
