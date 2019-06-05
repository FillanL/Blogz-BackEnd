class SavedArticleSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :article
  

  belongs_to :article
  belongs_to :user

  def article
    Article.find(object.article_id)
  end

end
