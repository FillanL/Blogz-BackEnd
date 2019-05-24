class SavedArticle < ApplicationRecord
    belongs_to :user
    # has_many :articles through: :users
end
