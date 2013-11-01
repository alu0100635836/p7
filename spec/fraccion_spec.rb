#TEST
#n --> Numerador
#d --> Denominador

require "./lib/fraccion.rb"

describe Fraccion  do
	before :each do
		@fraccion=Fraccion.new(-20,2)
	end

	it "Debe existir un numerador" do
		@fraccion.n.should eq (-20)
		
	end
	
	it "Debe existir un denominador" do
		@fraccion.d.should eq (2)
		
	end
	
	it "Debe de estar en su forma reducida" do
		@fraccion.reducir
		@fraccion.n.should eq (-10)
		@fraccion.d.should eq (1)
		
	end
	
	it "Se debe invocar al metodo num() para obtener el numerador" do
		@fraccion.num.should eq(-20)
	end
	
	it "Se debe invocar al metodo denom() para obtener el denominador" do
		@fraccion.denom.should eq(2)
	end
	
	it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
		@fraccion.mostrar.should match "-20/2"
	end
	
	it "Se debe mostar por la consola la fraccion en formato flotante" do
		@fraccion.flotante.should eq(-10.0)
	end
	
	it "Se debe comparar si dos fracciones son iguales con ==" do
		@fraccion.==(Fraccion.new(-20,2)).should be true
		@fraccion.==(Fraccion.new(15,2)).should be false
	end
	
	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
		@fraccion.abs
		@fraccion.n.should eq(20)
		@fraccion.d.should eq(2)
		
	end
	
	it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
		@fraccion.reciprocal
		@fraccion.n.should eq(2)
		@fraccion.d.should eq(-20)
	end
	
	it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
	      @fraccion.*(Fraccion.new(2,3))
	      @fraccion.n.should eq (-20) #-40 reducido es -20
	      @fraccion.d.should eq (3) #6 reducido es 3
	end
	
	it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
	      @fraccion./(Fraccion.new(2,3))
	      @fraccion.n.should eq (-15) #-60 -> reducido es 15
	      @fraccion.d.should eq (1) #4 -> reducido es 1
	end
	
        it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
              @fraccion.+(Fraccion.new(2,3))
              @fraccion.n.should eq (-28) 
              @fraccion.d.should eq (3) 
        end

        it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
              @fraccion.-@(Fraccion.new(2,3))
              @fraccion.n.should eq (-32) 
              @fraccion.d.should eq (3)
        end
	
	it "Comprobar reciproco de la division de fracciones" do
		@fraccion./(Fraccion.new(2,3))
		@fraccion.reciprocal
		@fraccion.n.should eq (1)
                @fraccion.d.should eq (-15)

			
        end

end
