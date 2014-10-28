class Struct
	attr_reader :val, :siguiente
	attr_writer :val, :siguiente
	def initializer (val,siguiente)
		@val = val
		@siguiente = siguiente
		@prev = nil
	end
end

class ListaEnlazada
	attr_reader :head, :tail
	attr_writer :head, :tail
	def initializer (vector)
		@head = Struct.new(vector[0],nil)
		aux = Struct.new(vector[1],nil)
		@tail = aux
		@head.siguiente = @aux
		(2..vector.length).each do |i|
			aux.siguiente = Struct.new(vector[i],nil)
			@tail = aux.siguiente
		end
	end
	def pop_fin
		aux = @tail.val
		@tail.val = 0
		@tail = @tail.prev
		@tail.siguiente = nil
		return aux
	end
	def pop_ini
		aux = @head.val
		@head = @head.siguiente
		@head.prev = nil
		return aux
	end
	def push_fin (val)
		aux = Struct.new(val,nil)
		@tail = aux
		@tail.prev.siguiente = @tail
		return true
	end
	def push_ini (val)
		aux = Struct.new(val,@head)
		@head = aux
		return true
	end
	def push_fin_m (vector)
		(0..vector.length).each do |i|
			aux = Struct.new(vector[i],nil)
			@tail = aux
			@tail.prev.siguiente = @tail	
		end		
		return true
	end
	def push_ini_m (vector)
		(0..vector.length).each do |i|
			aux = Struct.new(val,@head)
			@head = aux
		end
		return true
	end
end