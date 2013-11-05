#Fichero para definir las expectativas

require "matriz.rb"

describe Matrices do

	before :each do
		@mat1 = Matrices.new([[0,0],[0,0]])
                @mat2 = Matrices.new([[1,1],[1,1],[1,1]])
                @mat3 = Matrices.new([[1,1],[1,1]])
                @mat4 = Matrices.new([[2,2],[2,2]])
                @mat5 = Matrices.new([[3,3],[3,3]])
                @mat6 = Matrices.new([[2,2],[2,2]])
	end

	describe "# Creacion y almacenamiento de matriz" do
		it "Debe tener filas" do 
			(defined?(@mat1.fil)).should be_true
			@mat1.fil.should eq(2)
			(defined?(@mat2.fil)).should be_true
			@mat2.fil.should eq(3)
	
		end

		it "Debe tener columnas" do
			(defined?(@mat1.col)).should be_true
			@mat1.col.should eq(2)
		
			(defined?(@mat2.col)).should be_true
			@mat2.col.should eq(2)
		end
	end
	
	describe "# Operaciones aritmeticas" do
		it "Debe realizarse la suma de matrices" do
        		@resultado = @mat3 + @mat4
        		@resultado==@mat5
			
		end
		
		it "Debe realizarse la resta de matrices" do
        		@resultado = @mat5 - @mat3
        		@resultado == @mat4            
		end

		it "Debe realizarse el producto de matrices" do 
			@resultado = @mat3 * @mat4
			@resultado == @mat5
		end
	end
end
    
