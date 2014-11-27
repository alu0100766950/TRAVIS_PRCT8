require 'spec_helper'
require 'examen'


describe Examen do
	before :each do
		pregunta1 = "Cual es la salida del siguiente codigo en ruby?\n\tclass Xyz\n\t\tdef pots\n\t\t\t@nice\n\t\tend?\n\tend?\n\txyz = Xyz.new?\n\tp xyz.pots"
		respuestas1 = ["#<Xyz:0xa000208>","nil","0","Ninguna de las anteriores"]
		@resp = MultiRespuesta.new(pregunta1,4,1)
		@resp.introducir_resp(respuestas1)
		#@resp = @resp.to_s
		@Examen = Examen.new(@resp)
	end
	describe "pregunta correcta" do
		it "Valor de pregunta1 correcto" do
			@Examen.head.val.preg.should eq ("Cual es la salida del siguiente codigo en ruby?\n\tclass Xyz\n\t\tdef pots\n\t\t\t@nice\n\t\tend?\n\tend?\n\txyz = Xyz.new?\n\tp xyz.pots")
		end
		it "Valor respuesta correcta" do
			@Examen.head.val.correcta.should eq (1)
		end
		it "Valor numero respuesta" do
			@Examen.head.val.num.should eq (4)
		end
	end
	describe "funciona inverse" do
		it "muestra inverso" do
			@Examen.head.val.should eq (nil)
		end
	end
end
