class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def create
		@article = Article.new(article_params)
		@article.save

		flash.notice = "New article created!"
		redirect_to article_path(@article)
	end

	def new
		@article = Article.new
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		flash.notice = "Article destroyed!"
		redirect_to articles_path
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		@article.update(article_params)

		flash.notice = "Article '#{@article.title}' Updated!"

		redirect_to article_path(@article)
	end

	private
	def article_params
		params.require(:article).permit(:title, :body)
	end
end
