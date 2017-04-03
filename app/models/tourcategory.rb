class Tourcategory < ApplicationRecord
	has_many :tours
	
	validates :name, presence: true

	def self.search(query)
		where("name like ?" , "%#{query}")
	end
end
