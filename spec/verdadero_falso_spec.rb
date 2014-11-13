require "verdadero_falso.rb"

describe VerdaderoFalso do
	before :each do
		@vf = VerdaderoFalso.new("Es apropiado que una clase Tablero herede de una clase Juego?",false)
		@vf2 = VerdaderoFalso.new("Me llamo carlos",true)
	end
	describe "Pregunta correcta?" do
		it "Si, pregunta correcta" do
			@vf.preg.should eq("Es apropiado que una clase Tablero herede de una clase Juego?")
		end
	end
	describe "Respuesta usuario" do
		it "Respuesta captada" do
			@vf.correcta.should eq(false)
		end
	end
	describe "Respuesta incorrecta captada?" do
		it "Respuesta incorrecta reconocida" do
			@vf.correccion(true).should eq(false)
		end
	end
	describe "Respuesta correcta captada?" do
		it "Respuesta correcta reconocida" do
			@vf.correccion(false).should eq(true)
		end
	end
	describe "Comparable" do
		it "Pregunta igual" do
			vf3 = VerdaderoFalso.new("Me llamo carlos",false)
			a = vf3 == @vf2
			a.should eq(true)
		end
	end
end
