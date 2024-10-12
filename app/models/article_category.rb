class ArticleCategory < ApplicationRecord
  # associations
  belongs_to :article
  belongs_to :category

  # validations
  validates :article, :category, presence: true
end
