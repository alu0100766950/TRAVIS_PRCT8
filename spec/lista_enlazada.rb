require 'multirespuesta.rb'

Nodo = Struct.new(:val,:siguiente) < MultiRespuesta

class ListaEnlazada
	attr_reader :head, :tail
	attr_writer :head, :tail
	def initializer (vector)
		@head = Nodo.new(vector[0],nil)
		aux = Nodo.new(vector[1],nil)
		@head.siguiente = aux
		(2..vector.length).each do |i|
			aux2 = Nodo.new(vector[i],nil)
			aux.siguiente = aux2
			aux = aux2
		end
	end
	def pop
		aux = @head.val
		@head = @head.siguiente
		return aux
	end
	def push (val)
		aux = Nodo.new(val,nil)
		aux.siguiente = @head
		@head.siguiente = @head
		@head = aux
	end
	def push_multi (vector)
		(1..vector.length).each do |i|
			aux = Nodo.new(vector[i],nil)
			aux.siguiente = @head
			@head.siguiente = @head
			@head = aux

	end
end