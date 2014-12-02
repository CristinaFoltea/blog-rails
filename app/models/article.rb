# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  published  :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Article < ActiveRecord::Base
  validates_presence_of :title, :body
  validates_uniqueness_of :title
end
