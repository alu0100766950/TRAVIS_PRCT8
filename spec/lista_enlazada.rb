require 'multirespuesta.rb'

#Nodo = Struct.new(:val,:siguiente)

class Nodo
	attr_reader :val, :siguiente
	attr_writer :val, :siguiente
	
	def initialize (val,sig)
		@val = val
		@siguiente = sig
	end
end

class ListaEnlazada
	attr_reader :head, :tail
	attr_writer :head, :tail
	def initialize (entrada)
		@head = Nodo.new(nil,nil)
		push(entrada)
	end
	def pop
		aux = @head.val
		@head = @head.siguiente
		return aux
	end
	def push (val)
		if val.kind_of? Fixnum
			aux = Nodo.new(val,@head)
			@head = aux
		elsif val.kind_of? Array
			(0..(val.length)).each do |i|
				aux = Nodo.new(val[i],@head)
				@head = aux
			end
		end
		return true
	end
end