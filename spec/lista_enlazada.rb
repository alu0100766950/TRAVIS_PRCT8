require 'multirespuesta.rb'

#Nodo = Struct.new(:val,:siguiente)

class Nodo
	attr_accessor :val, :siguiente, :prev
	
	def initialize (val,sig,prev)
		@val = val
		@siguiente = sig
		@prev = prev
	end
end

class ListaEnlazada
	attr_accessor :head, :tail
	def initialize (entrada)
		@head = Nodo.new(nil,nil)
		push(entrada)

	end
	def pop
		aux = @head.val
		@head = @head.siguiente
		return aux
	end
	def pop_f
		aux = @tail.val
		@tail = @tail.siguiente
		return aux
	end
	def push (val)
		if val.kind_of? Fixnum
			aux = Nodo.new(val,nil)
			@tail.siguiente = aux
			@tail = aux
		elsif val.kind_of? Array
			(0..(val.length)).each do |i|
				aux = Nodo.new(val[i],nil)
				@tail.siguiente = aux
				@tail = aux
			end
		end
		return true
	end
	def push_i (val)
		if val.kind_of? Fixnum
			aux = Nodo.new(val,nil)
			@head.prev = aux
			@head = aux
		elsif val.kind_of? Array
			(0..(val.length)).each do |i|
				aux = Nodo.new(val[i],nil)
				@head.prev = aux
				@head = aux
			end
		end
		return true
	end
end