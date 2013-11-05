#Fichero para definir las expectativas

require "matriz.rb"

describe Matrices do

	before :each do
		@mat1 = Matrices.new([[0,0],[0,0]])
		@mat2 = Matrices.new([[1,1],[1,1],[1,1]])
	end

	it "Debe tener filas" do 
		(defined?(@mat1.fil)).should == true
		@mat1.fil.should eq(2)
		(defined?(@mat2.fil)).should == true
		@mat2.fil.should eq(3)
	
	end

	it "Debe tener columnas" do
		(defined?(@mat1.col)).should == true
		@mat1.col.should eq(2)
		
		(defined?(@mat2.col)).should == true
		@mat2.col.should eq(2)
	end
end
    
