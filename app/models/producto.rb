class Producto < ApplicationRecord
	belongs_to :cliente 
	validates :codigo, presence: true, uniqueness: true
	validates :nombre, presence: true, length: { minimum: 5}
end
