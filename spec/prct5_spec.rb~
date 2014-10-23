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
<<<<<<< HEAD
	describe "#respuesta correcta" do
		it "La respuesta correcta es" do
			@multi.correcta.should eq(3)
		end
	end
end
=======
	describe "#Introducir resuestas" do
		it"Respuestas correctas" do
			resp = ["Paco", "Pedro", "Carlos", "Adexe"]
			@multi.introducir_resp(resp)
			@multi.resp.should eq(["Paco", "Pedro", "Carlos", "Adexe"])
		end
	end
	describe "#¿Respuesta correcta?" do
		it "Respuesta correcta (Programa funciona correctamente)" do
			@multi.coreccion(3).should eq(true)
		end
	end
	describe "#¿Respuesta correcta?" do
		it "Respuesta incorrecta (Programa funciona correctamente)" do
			@multi.coreccion(2).should eq(false)
		end
	end
end
>>>>>>> 1e6c6af71348928439c74d2cf7c06f8ce791033b
