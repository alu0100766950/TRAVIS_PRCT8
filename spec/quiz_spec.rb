require 'spec_helper'
require 'quiz1'

describe Quiz do
	before :each do
		@quiz = Quiz.new("Cuestionario de LPP 10/12/2014") do
		question 'Cuantos argumentos de tipo bloque puede recibir un metodo?',
			right =>'Uno',
			wrong =>'Dos',
			wrong =>'Muchos',
			wrong =>'Los que defina el usuario'
		question 'En Ruby los bloque son objetos que continen codigo',
			wrong =>'Cierto',
			right =>'Falso'
		end
	end
	describe "Pruebas de salida" do
		it "Salida correcta" do
			@quiz.to_s.should eq("\t\tCuestionario de LPP 10/12/2014\n\t\t\t\tCuantos argumentos de tipo bloque puede recibir un metodo?\n\t\t  1 -  Uno\n  2 -  Dos\n  3 -  Muchos\n  4 -  Los que defina el usuario\n\n\n\t\tEn Ruby los bloque son objetos que continen codigo\n\t\t  1 -  Cierto\n  2 -  Falso\n\n\n")
		end
	end
end
