class CommentsController < ApplicationController

  # GET
  def index
    @comments = Comment.find(:all)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET
  def show
    @comment = Comment.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET
  def new
    @comment = Comment.new
    @article = Article.find(params[:article_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET
  def edit
    @comment = Comments.find(params[:id])
  end

  # POST
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(params[:comment])
    redirect_to article_path(@article)
  end

  private

  def find_article
    @article = Article.find(params[:article_id])
  end

end
