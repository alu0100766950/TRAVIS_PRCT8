require "multirespuesta.rb"

class VerdaderoFalso < MultiRespuesta
	def initialize (preg,correcta)
		@preg = preg
		@correcta = correcta	#Valores true o false
	end
	def to_s
		puts "#{@preg}?"
		puts "1)Verdadero"
		puts "2)Falso"
		end
	end
end