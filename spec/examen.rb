require "multirespuesta.rb"
require "verdadero_falso.rb"
require "lista_enlazada.rb"

class Examen < ListaEnlazada
	def initialize(vector_preguntas)
		super(vector_preguntas)
		@respondido = false
		if vector_preguntas.kind_of? Array
			@n_preguntas = vector_preguntas.length
		else
			@n_preguntas = 1
		end
		@respuestas = []
	end
	def print
		while @actual != nil
			@actual.val.to_s
			@actual = @actual.siguiente
		end
		@actual = @head
	end
	def print_node(val)
		for i in 0..val do
			@actual = @actual.siguiente			
		end
		@actual.val.to_s
		@actual = @head
	end
	def responder(val)
		print_node(val)
		print "Introduzca su respuesta -> "
		STDOUT.flush
		resp = gets.chomp
		if resp == @actual.val.correcta
			return true
		else
			return false
		end
	end
end