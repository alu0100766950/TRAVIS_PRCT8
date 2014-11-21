require "examen.rb"

class Interfaz
	def initialize(vector_preguntas)
		@respondido = false
		@n_preguntas = vector_preguntas.length
		@exam = Examen.new(vector_preguntas)
		@respuestas = []

	end

	def muestra_menu
		while true do
			puts "Prueba Examen"
			puts "Seleccione una opcion del menu:"
			puts "1) Mostrar examen"
			puts "2) Responder examen"
			if @respondido == true
				puts "3) Mostrar calificacion"
			end
			puts "0) Salir"
			print "-> "
			STDOUT.flush
			a = gets.chomp
			case a
			when "1"
				@exam.print
			when "2"
				for i in 0..@n_preguntas do
					@respuestas[i] = @exam.responder(i)
				end
				@respondido = true
			when "3"
				a = 0
				puts "Calificacion"
				for i in 0..@n_preguntas do
					if @respuestas[i] == true
						puts "#{i}) Correcta"
						a = a+1
					else
						puts "#{i}) Incorrecta"
					end
					puts "Tu puntuacion total es de #{(a/n_preguntas)*10}"
				end
			when 0
				exit
			end
		end
	end
end