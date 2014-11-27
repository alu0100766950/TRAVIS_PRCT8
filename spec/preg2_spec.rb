require 'spec_helper'
require 'preg2'

#Prueba ejercicio 1
#describe Xyz do
#	before :each do
#		@resp = Xyz.new()
#	end
#	describe "Salida apartado 1" do
#		it "Valor de apartado 1 correcto" do
#			@resp.should eq(nil)
#		end
#	end
#end
#
#Prueba ejercicio 2
#describe "Prueba hash raro" do
#	it "Hash raro es correcto" do
#		hash_raro = {
#			[1, 2, 3] => Object.new(),
#			Hash.new => :toto
#		}
#		hash_raro.should eq("{[1, 2, 3]=>#<Object:0x00000000e96678>, {}=>:toto}")
#	end
#end


#Prueba ejercicio 3
describe Array do
	before :each do
		@Array = Array.new()
	end
	describe "Salida apartado 3" do
		it "Valor de apartado 3 correcto" do
			@Array.say_hi.should eq("HEY!")
		end
	end
end

#Prueba ejercicio 4
describe Objeto do
	before :each do
		@Objeto = Objeto.new()
	end
	describe "Salida apartado 4" do
		it "Valor de apartado 4 correcto" do
			@Objeto.class.should eq(Objeto)
		end
	end
end	

#Prueba ejercicio 5

