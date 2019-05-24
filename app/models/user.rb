class User < ApplicationRecord
    has_many :articles
    has_many :saved_articles
end
