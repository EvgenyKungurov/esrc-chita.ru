class ArticlesController < ApplicationController
	def new
		@article = Article.new
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
	
	def show
		@article = Article.find(params[:id])
	end
	
	def index
		@article = Article.all.reverse
	end
	
	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end
	
	def destroy
		@article = Article.find(params[:id])
		redirect_to @article if @article.destroy
	end	

private
	def article_params
		params.require(:article).permit(:title, :text)
	end
end
