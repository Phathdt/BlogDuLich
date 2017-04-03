class Blogcategory < ApplicationRecord
	has_many :blogs

	validates :name, presence: true

	def self.search(query)
		where("name like ?" , "%#{query}")
	end
end
