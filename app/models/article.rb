# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  title       :string
#  content     :text
#  location_id :bigint           not null
#  user_id     :bigint           not null
#  available   :boolean          default(TRUE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Article < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories

  # validations
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true, length: { minimum: 10 }
end
