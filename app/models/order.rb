class Order < ApplicationRecord

	validates :number, presence: true
	validates :telephonenum, presence: true ,length: { in: 6..20 }
	validates :email, presence: true
	validates :User_name, presence: true


	def self.search(query)
		where(" User_name ? OR telephonenum like ?" , "%#{query}", "%#{query}")
	end
end
