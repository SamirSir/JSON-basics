class Furniture < ApplicationRecord
	validates :name, presence: true
	validates :descriptioin, presence: true
	validates :price, presence: true 
end
