require 'spec_helper'
require "lista_enlazada.rb"

describe ListaEnlazada do
	before :each do
		a = [3,5,6,7]
		@nodo2 = Nodo.new(5,nil)
		@nodo1 = Nodo.new(3,@nodo2)
		@lista = ListaEnlazada.new(a)
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
			@lista.push(a).should eq(true)
		end
	end
	describe "Insercion de un elemento" do
		it "Insercion simple correcta" do
			@lista.push(1).should eq(true)
		end
	end
	describe "Extraccion de un elemento" do
		it "Extraccion simple correcta" do
			@lista.pop.should eq(3)
		end
	end
	describe "Consulta de cabeza" do
		it "Consulta de cabeza correcta" do
			@lista.head.val.should eq(3)
		end
	end
end