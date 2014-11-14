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
	include Enumerable
	attr_reader :head, :tail
	attr_writer :head, :tail

	def <=> (anOther)
		@actual.val <=> anOther.actual.val
	end
	def each
		while @actual != nil do
			yield @actual.val
			@actual = @actual.siguiente
		end
		@actual = @head
	end
	def initialize (entrada)
		@@size = 0
		@actual = Nodo.new(nil,nil,nil)
		@head = Nodo.new(nil,nil,nil)
		@tail = Nodo.new(nil,nil,nil)
		push_i(entrada)
		@actual = @head
	end
	def pop
		aux = @head.val
		@head = @head.siguiente
		@@size = @@size-1
		return aux
	end
	def pop_f
		aux = @tail.val
		@tail = @tail.siguiente
		@@size = @@size-1
		return aux
	end
	def push (val)
		if val.kind_of? Fixnum
			aux = Nodo.new(val,nil,nil)
			aux.prev = @tail
			@tail.siguiente = aux
			@tail = aux
			@@size = @@size + 1 
		elsif val.kind_of? Array
			(0..(val.length)).each do |i|
				aux = Nodo.new(val[i],nil,nil)
				aux.prev = @tail
				@tail.siguiente = aux
				@tail = aux
				@@size = @@size + 1
			end
		end
		return true
	end
	def push_i (val)
		if val.kind_of? Fixnum
			aux = Nodo.new(val,nil,nil)
			aux.siguiente = @head
			@head.prev = aux
			@head = aux
			@@size = @@size + 1
		elsif val.kind_of? Array
			(0..(val.length)).each do |i|
				aux = Nodo.new(val[i],nil,nil)
				aux.siguiente = @head
				@head.prev = aux
				@head = aux
				@@size = @@size + 1
			end
		end
		return true
	end
	def print
		while @actual != nil
			puts @actual.val
			@actual = @actual.siguiente
		end
		@actual = @head
	end
end

lista = ListaEnlazada.new([1,2,3,4])
lista.print