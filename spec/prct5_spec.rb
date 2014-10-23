require 'spec_helper'
require 'prct5'
require "lib/multirespuesta.rb"

describe MultiRespuesta do
	before :each do
		@multi = MultiRespuesta.new("Como me llamo",4,3)
	end
	describe "#Introducir pregunta" do
		it "Introduccion de pregunta correcto" do
			@multi.preg.should eq("Como me llamo")
		end
	end
	describe "#Introducir numero de respuestas" do
		it "Numero de respuestas correctas" do
			@multi.num.should eq(4)
		end
	end
	describe "#respuesta correcta" do
		it "La respuesta correcta es" do
			@multi.correcta.should eq(3)
		end
	end
end
