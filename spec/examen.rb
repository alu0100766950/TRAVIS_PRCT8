require 'multirespuesta'
require 'verdadero_falso'
require 'lista_enlazada'

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
	def getCorrecta(node)
		return node.val.correcta
	end
	def getPreg(node)
		return node.val.preg
	end
	def getNum(node)
		return node.val.num
	end
	def responder(value)
		print_node(value)
		print "Introduzca su respuesta -> "
		STDOUT.flush
		resp = gets.chomp
		if resp == @actual.val.correcta
			return true
		else
			return false
		end
	end
	def my_while(condicion, &bloque) 
		while condicion.call
			bloque.call
		end
	end
	def inverse
		aux = @tail
		my_while -> {aux != nil} do
			aux.val.to_s
			aux = aux.prev
		end
		return true
	end
end