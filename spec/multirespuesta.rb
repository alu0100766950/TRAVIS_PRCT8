class MultiRespuesta
	include Comparable
	attr_reader :preg, :num, :resp, :correcta
	attr_writer :preg, :num, :resp, :correcta
	def <=> (anOther)
		@num <=> anOther.num
	end
	def == (anOther)
		@num == anOther.num && @preg == anOther.preg
	end
	def initialize(preg,num,correcta)
		@resp = []
		@num = num
		@preg = preg
		@correcta = correcta
	end
	def introducir_resp(resp)
		for i in 0..(@num.to_i - 1)
			@resp[i] = resp[i]
		end
	end
#	def to_s
#		puts "#{@preg}?"
#		for i in 0..(@num.to_i - 1)
#			puts"#{i+1})#{@resp[i]}"
#		end
#		print "Introduzca su respuesta"
#	end 
	def to_s
		puts "#{@preg}?"
		for i in 0..@num-1 do
			puts"#{i+1})#{@resp[i]}"
		end
	end
	def correccion(respuesta_usuario)
		if(respuesta_usuario == @correcta)
			return true
		else
			return false
		end
	end
end