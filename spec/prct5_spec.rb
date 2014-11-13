require 'spec_helper'
require 'prct5'
require 'multirespuesta.rb'

describe MultiRespuesta do
	before :each do
		@multi = MultiRespuesta.new("Como me llamo",4,3)
		@multi2 = MultiRespuesta.new("Eres canario",2,1)
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
	describe "#Introducir resuestas" do
		it"Respuestas correctas" do
			resp = ["Paco", "Pedro", "Carlos", "Adexe"]
			@multi.introducir_resp(resp)
			@multi.resp.should eq(["Paco", "Pedro", "Carlos", "Adexe"])
		end
	end
	describe "#Respuesta correcta? si" do
		it "Respuesta correcta (Programa funciona correctamente)" do
			@multi.correccion(3).should eq(true)
		end
	end
	describe "#Respuesta correcta? no" do
		it "Respuesta incorrecta (Programa funciona correctamente)" do
			@multi.correccion(2).should eq(false)
		end
	end
	describe "#Existen getters?" do
		it "Responde al getter de preg" do
			@multi.respond_to?("preg").should eq(true)
		end
		it "Responde al getter de resp" do
			@multi.respond_to?("resp").should eq(true)
		end
		it "Responde al getter de num" do
			@multi.respond_to?("num").should eq(true)
		end
		it "Responde al getter de correcta" do
			@multi.respond_to?("correcta").should eq(true)
		end
		it "Responde al getter de introducir_resp" do
			@multi.respond_to?("introducir_resp").should eq(true)
		end
	end
	describe "Enumerable" do
		it "Mas respuestas" do
			a = @multi > @multi2
			a.should eq(true)
		end
		it "Mas respuestas falso" do
			a = @multi2 > @multi
			a.should eq(false)
		end
		it "Menos respuestas" do
			a = @multi2 < @multi
			a.should eq(true)
		end
		it "Menos respuestas falso" do
			a = @multi < @multi2
			a.should eq(false)
		end
		it "Pregunta igual" do
			multi3 = MultiRespuesta.new("Eres canario",2,1)
			a = multi3 == @multi2
			a.should eq(true)
		end
	end
end
