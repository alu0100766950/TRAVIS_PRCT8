require 'spec_helper'
require 'prct5'
require "lib/multirespuesta.rb"

describe MultiRespuesta do
	before :each do
		@multi = MultiRespuesta.new("Como me llamo",4)
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

end