class Cliente < ActiveRecord::Base
	has_many :prestamos
	has_many :libros, :through => :prestamos
	validates_presence_of :email, :nombre, :dirtwitter
end
