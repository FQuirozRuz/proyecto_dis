class Producto < ApplicationRecord
	validates :codigo, presence: true, uniqueness: true
	validates :nombre, presence: true, length: { minimum: 5}
end
