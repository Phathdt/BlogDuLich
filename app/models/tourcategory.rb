class Tourcategory < ApplicationRecord
	has_many :tours

	def self.search(query)
		where("name like ?" , "%#{query}")
	end
end
