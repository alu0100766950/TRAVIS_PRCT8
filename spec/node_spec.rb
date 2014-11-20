require 'spec_helper'
require 'lista_enlazada.rb'

describe ListaEnlazada do
	before :each do
		a = [3,5,6,7]
		@nodo2 = Nodo.new(5,nil,nil)
		@nodo1 = Nodo.new(3,@nodo2,nil)
		@lista = ListaEnlazada.new(3)
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

#module Enumerable
#	describe "Enumerable" do
#		it "Funciona collect" do
#			@lista.collect{ |i| i.to_s + "x"}.should eq('3x')
#		end
#		it "Funciona sort" do
#			@lista.sort.should eq(3)
#		end
#		it "Funciona max" do
#			@lista.max.should eq(3)
#		end
#		it "Funciona min" do
#			@lista.min.should eq (3)
#		end
#	end
#end

#describe "prueba" do
#module Enumerable
#By default is included in Array class
#r = [1,2,3,4,5,6].each{ |i| puts i}
#
#puts r
#
#r = [1,2,3,4,5,6].collect{ |i| i.to_s + "x"}
#
#puts r
#
#r = [1,2,3,4,5,6].detect{ |i| i.between?(2,3)}
#
#puts r
#
#r = [1,2,3,4,5,6].select{ |i| i.between?(3,5)}
#
#puts r
#
#r = [2,1,6,5,4,3].sort
#
#puts r
#
#r = [2,1,6,5,4,3].max
#
#puts r
#
#r = [2,1,6,5,4,3].min
#
#puts r
#end