require 'spec_helper'
require "lista_enlazada.rb"

describe ListaEnlazada do
	before :each do
		@nodo1 = Struct.new(3,@nodo2)
		@nodo2 = Struct.new(5,nil)
		@lista = ListaEnlazada.new([3,5,6,7])
	end
	describe "Valor de nodo1 = 3" do
		it "Valor de nodo1 correcto" do
			@nodo1.val.should eq(3)
		end
	end
	describe "Nodo siguiente a nodo1 = nodo2" do
		it "Nodo siguiente correcto" do
			@nodo1.siguiente.should eq(@nodo2)
		end
	end
	describe "Insercion de varios elementos" do
		it "Insercion multiple correcta" do
			a = [1,2,3]
			@nodo1.push(a).should eq(true)
		end
	end
	describe "Insercion de un elemento" do
		it "Insercion simple correcta" do
			@nodo1.push(1).should eq(true)
		end
	end
	describe "Extraccion de un elemento" do
		it "Extraccion simple correcta" do
			@nodo1.pop.should eq(3)
		end
	end
	
	describe "Consulta de cabeza" do
		it "Consulta de cabeza correcta" do
			@lista.head.should eq(3)
		end
	end
end
