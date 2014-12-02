# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  body        :text
#  published   :boolean
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer
#

class Article < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :title, :body, :category_id
  validates_uniqueness_of :title
end
