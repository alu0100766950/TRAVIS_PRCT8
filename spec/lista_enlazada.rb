require 'multirespuesta.rb'

#Nodo = Struct.new(:val,:siguiente)

class Nodo
	attr_reader :val, :siguiente, :prev
	attr_writer :val, :siguiente, :prev
	
	def initialize (val,sig,prev)
		@val = val
		@siguiente = sig
		@prev = prev
	end
end

class ListaEnlazada
	attr_reader :head, :tail
	attr_writer :head, :tail
	def initialize (entrada)
		@head = Nodo.new(nil,nil,nil)
		@tail = Nodo.new(nil,nil,nil)
		push_i(entrada)
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
			aux = Nodo.new(val,nil,nil)
			@tail.siguiente = aux
			@tail = aux
		elsif val.kind_of? Array
			(0..(val.length)).each do |i|
				aux = Nodo.new(val[i],nil,nil)
				@tail.siguiente = aux
				@tail = aux
			end
		end
		return true
	end
	def push_i (val)
		if val.kind_of? Fixnum
			aux = Nodo.new(val,nil,nil)
			@head.prev = aux
			@head = aux
		elsif val.kind_of? Array
			(0..(val.length)).each do |i|
				aux = Nodo.new(val[i],nil,nil)
				@head.prev = aux
				@head = aux
			end
		end
		return true
	end
end