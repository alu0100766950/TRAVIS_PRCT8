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
		@size = 0

		@actual = Nodo.new(nil,nil,nil)

		@head = Nodo.new(nil,nil,nil)
		@tail = Nodo.new(nil,nil,nil)
		@head = @tail
		@tail = @head
		push(entrada)

		@actual = @head
	end
	def pop
		aux = @head.val
		@head = @head.siguiente
		@size = @size-1
		return aux
	end
	def pop_f
		aux = @tail.val
		@tail = @tail.siguiente
		@size = @size-1
		return aux
	end
	def push (val)
		if val.instance_of? Array
			for i in 0..val.length do
#			(0..(val.length)).each do |i|
				aux = Nodo.new(val[i],nil,nil)
				if((@head == nil) and (@tail == nil))
					@head = aux
					@tail = @head
					@size = @size + 1
				else
					@tail.siguiente = aux
					aux.prev = @tail
					@tail = aux
					@size = @size + 1
				end
			end
		else
			aux = Nodo.new(val[i],nil,nil)
			if((@head == nil) and (@tail == nil))
				@head = aux
				@tail = @head
				@size = @size + 1
			else
				@tail.siguiente = aux
				aux.prev = @tail
				@tail = aux
				@size = @size + 1
			end
		end
		return true
	end
	def push_i (val)
		if val.instance_of? Array
			for i in 0..val.length do
#			(0..(val.length)).each do |i|
				aux = Nodo.new(val[i],nil,nil)
				if((@head == nil) and (@tail == nil))
					@head = aux
					@tail = @head
					@size = @size + 1
				else
					@head.prev = aux
					aux.siguiente = @head
					@head = aux
					@size = @size + 1
				end
			end
		else
			aux = Nodo.new(val[i],nil,nil)
			if((@head == nil) and (@tail == nil))
				@head = aux
				@tail = @head
				@size = @size + 1
			else
				@head.prev = aux
				aux.siguiente = @head
				@head = aux
				@size = @size + 1
			end
		end
		return true
	end
	def imprime(nodo)
		if (nodo != nil)
			print "#{nodo.val} "
			imprime(nodo.siguiente)
		end
	end
	def forPrint
		imprime(@head)
		puts ""
	end
	def my_while(condicion, &bloque) 
		while condicion.call
			bloque.call
		end
	end
	def inverse
		aux = @tail
		my_while -> {aux != nil} do 
			print "#{aux.val} "
			aux = aux.prev
		end
		puts ""
	end
end