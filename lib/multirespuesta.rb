class MultiRespuesta
	def initialize
		@resp = []
	end
	def introducir_resp
		for i in 0..(@num.to_i - 1)
			puts"Introduzca la respuesta #{i+1}:"
			STDOUT.flush 
			@resp[i] = gets.chomp  
		end
	end
	def introducir_num
		puts"Introduzca el numero de respuestas que tendra su test:"	
		STDOUT.flush 
		@num = gets.chomp
	end
	def introducir_preg
			puts"Introduzca su pregunta:"
			STDOUT.flush 
			@preg = gets.chomp  
	end
	def to_s
		puts "#{@preg}?"
		for i in 0..(@num.to_i - 1)
			puts"#{i+1})#{@resp[i]}"
		end
		print "Introduzca su respuesta"
	end
end

system("clear")
a = MultiRespuesta.new
system("clear")
a.to_s