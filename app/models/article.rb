class Article < ApplicationRecord
	belongs_to :category

	validates_presence_of :title, :content

	cope :active, 			 -> { where('active = ?', true) }
  scope :alphabetical, -> { order('title') }
end
