#Ejercicio 1
class Xyz
	def pots
		@nice
	end
end
xyz = Xyz.new
p xyz.pots

#Ejercicio 2
hash_raro = {
	[1, 2, 3] => Object.new(),
	Hash.new => :toto
}

#Ejercicio 3
class Array
	def say_hi
		"HEY!"
	end
end
p [1, "bob"].say_hi


#Ejercicio 4
class Objeto
end
puts Objeto.class #Modificación creada para comprobar la clase del objeto...

#Ejercicio 5

