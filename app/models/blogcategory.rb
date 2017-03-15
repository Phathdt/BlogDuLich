class Blogcategory < ApplicationRecord
	has_many :blogs

	def self.search(query)
		where("name like ?" , "%#{query}")
	end
end
