class ArticleSerializer < ActiveModel::Serializer
  attributes :id,:title,:content, :keyword,:featured,:category,:sub_category,:article_url

  belongs_to :user
  # belongs_to :saved_article

end
