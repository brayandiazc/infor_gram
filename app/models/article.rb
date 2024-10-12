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
end
