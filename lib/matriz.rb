#Fichero para el desarrolo de la clase matriz

require 'matrix'

class Matrices
	
	# Getters para el acceso a las variables
	attr_reader :matriz, :col, :fil
	
	def initialize(matriz)
                @matriz = matriz
                @col = matriz[0].size
                @fil = matriz.size     
        end
	
	# Método que convierte una matriz a una cadena 
	def to_s
      		i = 0
		cadena = ""
		while i < @fil
			j = 0
			while j < @col
				cadena += "#{matriz[i][j]} "
			      	j = j + 1
			end 
			cadena += "\n "
			i = i + 1
		end
		cadena
    	end

	# Suma de dos matrices, recibe una como parámetro
	def +(other)
		raise ArgumentError, "No tienen las mismas dimensiones " unless @fil == other.fil && @col == other.col
                raise TypeError "No es una matriz " unless other.instance_of?Matrices
                matriz_suma = @matriz
                for i in 0...@fil
                        for j in 0...@col do
                                matriz_suma[i][j] = matriz_suma[i][j] + other.matriz[i][j]
                        end
                end
        end
	
	# Resta de dos matrices, recibe una como parámetro
	def -(other)
                raise ArgumentError, "No tienen las mismas dimensiones " unless @fil == other.fil && @col == other.col
                raise TypeError "No es una matriz " unless other.instance_of?Matrices
                matriz_resta = @matriz
                for i in 0...@fil
                        for j in 0...@col do
                                matriz_resta[i][j] = @matriz[i][j] - other.matriz[i][j]
                        end
                end
	end

	# Producto de dos matrices, recibe una como parámetro
	def *(other)
		raise ArgumentError, "No tienen las dimensiones adecuadas " unless @col == other.fil
		raise TypeError "No es una matriz " unless other.instance_of?Matrices
		matriz_producto = @matriz
		for k in 0...@fil do
			for i in 0...@fil do
			aux= 0
				for j in 0...@col do
					aux += @matriz[i][j] * other.matriz[j][k]
                                end        					
			matriz_producto[i][k] = aux;
			end
		end
	end

	# Producto de una matriz por un escalar
	def x(n)
		raise ArgumentError, "No es un entero" unless n.class == Fixnum
              	matriz_resultado = @matriz
        	for i in 0...@fil
                	for j in 0...@col do
				matriz_resultado[i][j] = @matriz[i][j]*n
                	end
        	end
    	end

	# Division de una matriz por un escalar
    	def /(n) 
		raise ArgumentError, "No es un entero" unless n.class == Fixnum && n != 0
              	matriz_resultado = @matriz
        	for i in 0...@fil
                	for j in 0...@col do
				matriz_resultado[i][j] = @matriz[i][j]/n
                	end
        	end
    	end

	# Compara si dos matrices son iguales
	def ==(other)
		raise TypeError "No es una matriz " unless other.instance_of?Matrices
		if (@fil == other.fil && @col == other.col)
			for i in 0...@fil do
				for j in 0...@col do
					if(@matriz[i][j] != other.matriz[i][j])
						return false
					end
				end			
			end
			return true
		end
		return false	
	end

	# Método que devuelve la matriz traspuesta	
	def traspuesta
	       	resultado = Array.new
		for i in 0...@col
	       		resultado[i] = Array.new
		 	for j in 0...@fil
		 		resultado[i][j] = matriz[j][i]
		 	end
	       	end
	       	resultado
     	end
end
