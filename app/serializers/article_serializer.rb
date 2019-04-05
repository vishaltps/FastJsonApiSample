class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description
  belongs_to :author
  has_many :comments

  attribute :author do |article|
    AuthorSerializer.new(article.author).as_json["data"]
  end
  attribute :comments do |article|
    CommentSerializer.new(article.comments).as_json["data"]
  end
end
