require 'multirespuesta.rb'

class ListaEnlazada
	attr_reader :head, :tail
	attr_writer :head, :tail
	def initializer (vector)
		@head = Struct::Nodo.new(vector[0],nil)
		aux = Struct::Nodo.new(vector[1],nil)
		@head.siguiente = aux
		(2..vector.length).each do |i|
			aux2 = Struct::Nodo.new(vector[i],nil)
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
		aux = Struct::Nodo.new(val,nil)
		aux.siguiente = @head
		@head.siguiente = @head
		@head = aux
		return true
	end
	def push_multi (vector)
		(1..vector.length).each do |i|
			aux = Struct::Nodo.new(vector[i],nil)
			aux.siguiente = @head
			@head.siguiente = @head
			@head = aux
		end
		return true
	end
end