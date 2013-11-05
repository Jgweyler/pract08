#Fichero para el desarrolo de la clase matriz

require 'matrix'

class Matrices
	
	attr_reader :mat, :col, :fil

	def initialize(matriz)
		@mat = matriz
		@col = matriz[0].size 
		@fil = matriz.size	
	end

end
