require "multirespuesta.rb"
require "lista_enlazada.rb"

describe MultiRespuesta do
	before :each do
		@resp = [5]
		pregunta1 = "Cual es la salida del siguiente codigo en ruby?\n\tclass Xyz\n\t\tdef pots\n\t\t\t@nice\n\t\tend?\n\tend?\n\txyz = Xyz.new?\n\tp xyz.pots"
		pregunta2 = "La siguiente definicion de un hash en Ruby es valida:\n\thash_raro = {\n\t\t[1,2,3] => Object.new(),\n\t\tHash.new => :toto\n\t}"
		pregunta3 = "Cual es la salida del siguiente codigo Ruby?\n\tclass Array\n\t\tdef say_hi\n\t\t\t\"Hey!\"\n\t\tend\n\tend\n\tp [1, \"bob\"].say_hi"
		pregunta4 = "Cual es el tipo de objeto en el siguiente codigo Ruby?\n\tclass Objeto\n\tend"
		pregunta5 = "Es apropiado que una clase Tablero herede de una clase Juego"
		preguntas = [pregunta1,pregunta2,pregunta3,pregunta4,pregunta5]
		numeros = [4,2,4,4,2]
		respuestas1 = ["#<Xyz:0xa000208>","nil","0","Ninguna de las anteriores"]
		respuestas2 = ["Cierto","Falso"]
		respuestas3 = ["1","Bob","HEY!","Ninguna de las anteriores"]
		respuestas4 = ["Una instancia de la clase Class","Una constante","Un objeto","Ninguna de las anteriores"]
		respuestas5 = ["Cierto","Falso"]
		for i in 0..@resp.length
			@resp[i] = MultiRespuesta.new("#{i}.-)#{preguntas[i]}",numeros[i],nil)
			case i
			when 1
				@resp[i].introducir_resp(respuestas1)
			when 2
				@resp[i].introducir_resp(respuestas2)
			when 3
				@resp[i].introducir_resp(respuestas3)
			when 4
				@resp[i].introducir_resp(respuestas4)
			when 5
				@resp[i].introducir_resp(respuestas5)
			end
		end
		@lista = ListaEnlazada.new(@resp)
	end
end