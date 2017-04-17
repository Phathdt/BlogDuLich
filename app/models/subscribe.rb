class Subscribe < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true
	validates :phone, presence: true ,length: { in: 6..20 }
end
