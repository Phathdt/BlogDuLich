class Tour < ApplicationRecord
	belongs_to :tourcategory
	belongs_to :users,optional: true
	
	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	def self.search(query)
		where("title like ? OR body like ?" , "%#{query}", "%#{query}")
	end

	 before_validation { image.clear if @delete_image }

	def delete_image
		@delete_image ||= false
	end

	def delete_image=(value)
		@delete_image  = !value.to_i.zero?
	end
end
