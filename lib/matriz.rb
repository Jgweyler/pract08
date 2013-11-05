#Fichero para el desarrolo de la clase matriz

require 'matrix'

class Matrices
	
	attr_reader :matriz, :col, :fil

	def initialize(matriz)
                @matriz = matriz
                @col = matriz[1].size
                @fil = matriz.size     
        end

	def +(other)
		raise ArgumentError, "No tienen las mismas dimensiones " unless @fil == other.fil && @col == other.col
                raise TypeError "No es una matriz " unless
                matriz_suma = @matriz
                for i in 0...@fil
                        for j in 0...@col do
                                matriz_suma[i][j] = matriz_suma[i][j] + other.matriz[i][j]
                        end
                end
        end
	
	def -(other)
                raise ArgumentError, "No tienen las mismas dimensiones " unless @fil == other.fil && @col == other.col
                raise TypeError "No es una matriz " unless
                matriz_resta = @matriz
                for i in 0...@fil
                        for j in 0...@col do
                                matriz_resta[i][j] = @matriz[i][j] - other.matriz[i][j]
                        end
                end
                #Matrices.new(matriz_resta)
	end
end
