#encoding: utf-8
#require './preg'
class Answer
	attr_accessor :kind, :order, :answer
	def initialize(order, kind, answer)
		@kind = kind
		@order = order
		@answer = answer
	end

	def to_s
		"#{@order} -  #{answer}"
	end
	def is_right?
		@kind == Quiz::RIGHT
	end
	def <=>(other)
		self.order <=> other.order
	end
end

class Question
	ORDER = 0
	KIND = 1
	attr_accessor :text, :answers
	def initialize(text, answers)
		@text = text
		@answers = answers.map { |k, v| Answer.new(k[ORDER], k[KIND],  v) }.sort
	end

	def to_s
		output = <<"EOQ"
		#{@text}
		#{
		out = ""
		@answers.each do |answer|
		out << "  #{answer}\n"
	end
	out
	}
EOQ
	end
	def ask
		begin
			puts self
			print "Su respuesta: " 
			answerno = gets.to_i - 1
		end while (answerno < 0 or answerno >= @answers.length)
		@answers[answerno].is_right? 
	end
end

class Quiz
	RIGHT = :right
	WRONG = :wrong

	attr_accessor :name, :questions 

	def initialize(name = "", &block)
		self.name = name
		self.questions = []
		@counter = 0
		instance_eval &block
	end
	
	def question(text, answers)
		q = Question.new(text, answers)
		questions << q
		@counter = 0
	end

	def to_s
		out = <<"EOQUIZ"
		#{self.name}
		#{self.questions.join("\n")}
EOQUIZ
	end

	def wrong
		@counter += 1
		[@counter, WRONG]
	end

	def right
		@counter+= 1
		[@counter, RIGHT]
	end

	def title(title)
		@name = title
	end

	def run
		counter=0
		puts self.name+"\n\n"
		self.questions.each { |q| counter += 1 if q.ask }
		puts "#{counter} respuestas correctas de un total de #{@questions.size}."
	end
end

	quiz = Quiz.new("Cuestionario de LPP 10/12/2014") do
		question '¿Cuántos argumentos de tipo bloque puede recibir un método?',
			right =>'Uno',
			wrong =>'Dos',
			wrong =>'Muchos',
			wrong =>'Los que defina el usuario'
		question 'En Ruby los bloque son objetos que continen código',
			wrong =>'Cierto',
			right =>'Falso'
	end
#	puts quiz
	puts "************************"
	quiz.run

