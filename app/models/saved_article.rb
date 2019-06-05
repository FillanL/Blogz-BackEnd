class SavedArticle < ApplicationRecord
    belongs_to :user
    belongs_to :article
    # belongs_to :article
    # has_many :articles

  
end
