require 'spec_helper'
require "lib/preg2.rb"

#Prueba ejercicio 1
describe Xyz do
	before :each do
		@resp = Xyz.new()
	end
	describe "Salida apartado 1" do
		it "Valor de apartado 1 correcto" do
			@resp.should eq(nil)
		end
	end
end

#Prueba ejercicio 2


#Prueba ejercicio 3
describe Array do
	before :each do
		@Array = Array.new()
	end
	describe "Salida apartado 3" do
		it "Valor de apartado 3 correcto" do
			@Array.say_hi.should eq("Hey!")
		end
	end
end

#Prueba ejercicio 4
	#modificación hecha en el fichero preg1.rb... ¿es?

#Prueba ejercicio 5
#¿?¿?
