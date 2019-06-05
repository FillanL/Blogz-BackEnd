class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name,:username,:location, :img_url,:password
  has_many :articles
  has_many :saved_articles
  # has_many :articles, through: :saved_articles

end
