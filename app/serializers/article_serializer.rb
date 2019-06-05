class ArticleSerializer < ActiveModel::Serializer
  attributes :id,:title,:content, :keyword,:featured,:category,:sub_category,:article_url
  belongs_to :user
  has_many :saved_articles

end
