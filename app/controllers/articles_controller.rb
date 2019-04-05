class ArticlesController < ApplicationController
  def index
    json_response(ArticleSerializer.new(Author.includes(articles: :comments).find(params[:author_id]).articles, {include: [:comments]}).serialized_json)
  end

  def show
    json_response(ArticleSerializer.new(Article.find(params[:id])))
  end

  def create
  end
end
