class Libro < ActiveRecord::Base
	has_many :prestamos
	has_many :clientes, :through => :prestamos
	validates_presence_of :titulo, :comentario
end
