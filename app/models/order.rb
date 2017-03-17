class Order < ApplicationRecord
	def self.search(query)
		where(" User_name ? OR telephonenum like ?" , "%#{query}", "%#{query}")
	end
end
