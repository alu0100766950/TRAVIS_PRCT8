require 'spec_helper'
require "lib/lista_enlazada.rb"

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
	describe "Extracción de ultimo elemento de la lista" do
		it "Extracción correcta" do
			@lista.pop_fin.should eq(7)
		end
	end
	describe "Extracción del primer elemento de la lista" do
		it "Extracción correcta" do
			@lista.pop_ini.should eq(3)
		end
	end
	describe "Inserción de elemento por el inicio" do
		it "Elemento insertado correctamente" do
			@lista.push_ini(8).should eq(true)
		end
	end
	describe "Inserción de elemento por el final" do
		it "Elemento insertado correctamente" do
			@lista.push_fin(6).should eq(true)
		end
	end
	describe "Inserción de varios elementos" do
		it "Inserción multiple correcta" do
			@lista.push_m([9,7,4]).should eq(true)
		end
	end
	describe "Consulta de cabeza" do
		it "Consulta de cabeza correcta" do
			@lista.head.should eq(3)
end