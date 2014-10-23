class MultiRespuesta
	attr_reader :preg, :num, :resp
	attr_writer :preg, :num, :resp

	def initialize(preg,num)
		@resp = []
		@num = num
		@preg = preg
		#introducir_num
		#introducir_preg
		#introducir_resp
	end
	def introducir_resp(resp[])
		for i in 0..(@num.to_i - 1)
			@resp[i] = resp[i]
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