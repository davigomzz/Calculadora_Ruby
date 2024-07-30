again = 1
while again == 1 do

class Calculadora

	def adicao (n1, n2)
		@res =	(n1 + n2) 
		if @res = -
			@res * -1
			puts "#{n1} + #{n2} = #{@res}"
			return @res
		end
	end

	def subtracao(n1, n2)
		@res =	(n1 - n2) 
		if @res = -
			@res * -1
			puts "#{n1} - #{n2} = #{@res}"
			return @res
		end 		
	end
	

	def divisao(n1, n2)
		if n2 != 0
			@res =	(n1 / n2)
			if @res = -
				@res * -1
				puts "#{n1} / #{n2} = #{@res.round(2)}"
				return @res.round(3)
			end
		else
			puts "Divisão Inválida!"
			return "Divisão Inválida!"
		end
	end

	def multiplicacao(n1, n2)
		@res =	(n1 * n2) 
		if @res = -
			@res * -1
			puts "#{n1} * #{n2} = #{@res}"
			return @res
		end
	end

	def null
		puts "Operação Inválida!"
	end
end


puts "-----------"
puts "Calculadora"
puts "-----------"

puts "Escolha a operação!"
puts "1 Adição"
puts "2 Subtração"
puts "3 Divisão"
puts "4 Multiplicação"

puts "Digite o número da operação escolhida?"
operacao = gets.chomp().to_i

puts "Digite o primeiro número?"
n1 = gets.chomp().to_f


puts "Digite o segundo número?"
n2 = gets.chomp().to_f

calculo = Calculadora.new

if operacao == 1
	calculo.adicao(n1, n2)
elsif operacao == 2
	calculo.subtracao(n1, n2)
elsif operacao == 3
	calculo.divisao(n1, n2)
elsif operacao == 4
	calculo.multiplicacao(n1, n2)
else operacao == ""
	calculo.null
end

puts "Ótimo, aguarde para dar continuidade."
sleep (3.5) 

again = 0
puts ("Deseja realizar uma nova conta?")
puts ("1 - Sim")
puts ("2 - Não")
again = gets.to_i
system('cls')
end

#teste de codigo para mudança e alteração de codigo pelo bitbuckt
#teste