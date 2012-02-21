class ArticlesController < ApplicationController

  def index
    @articles = Article.paginate :page => params[:page], :per_page => 2
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new(:article => @article)
  end

  def new
    @article = Article.new
    @article.position = Article.maximum(:position).to_i + 1
  end

  def create
    @article = Article.new(params[:article])
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, 
          notice: 'Your article was created successfully.' }
        format.json { render json: @article, 
          status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, 
          status: :unprocessable_entity }
      end
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to @article, 
          notice: 'Successfully updated article.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @article.errors, 
          status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

end
