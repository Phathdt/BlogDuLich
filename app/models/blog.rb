class Blog < ApplicationRecord
	belongs_to :blogcategory
	belongs_to :users ,optional: true

	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	def self.search(query)
		where("title like ? OR body like ?" , "%#{query}", "%#{query}")
	end
end
