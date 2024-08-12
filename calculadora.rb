class Calculadora
  def adicao(n1, n2)
    res = n1 + n2
    puts "#{n1} + #{n2} = #{res}"
    res
  end

  def subtracao(n1, n2)
    res = n1 - n2
    puts "#{n1} - #{n2} = #{res}"
    res
  end

  def divisao(n1, n2)
    if n2 != 0
      res = n1 / n2
      puts "#{n1} / #{n2} = #{res.round(3)}"
      res.round(3)
    else
      puts "Divisão Inválida!"
      return "Divisão Inválida!"
    end
  end

  def multiplicacao(n1, n2)
    res = n1 * n2
    puts "#{n1} * #{n2} = #{res}"
    res
  end

  def operacao_invalida
    puts "Operação Inválida!"
    sleep (2)
    system ("clear")
  end
end

again = 1

while again == 1
  puts "-----------"
  puts "Calculadora"
  puts "-----------"

  puts "Escolha a operação!"
  puts "1 Adição"
  puts "2 Subtração"
  puts "3 Divisão"
  puts "4 Multiplicação"

  operacao = gets.chomp.to_i

  if operacao > 4
    puts "Operação Inválida!"
    puts "inicie o programa novamente"
    break 
  end

  if operacao == " "
    puts "Operação Inválida!"
    puts "inicie o programa novamente"
    break 
  end
 
  puts "Digite o primeiro número:"
  n1 = gets.chomp.to_f

  puts "Digite o segundo número:"
  n2 = gets.chomp.to_f

  calculo = Calculadora.new

  case operacao
  when 1
    calculo.adicao(n1, n2)
  when 2
    calculo.subtracao(n1, n2)
  when 3
    calculo.divisao(n1, n2)
  when 4
    calculo.multiplicacao(n1, n2)
  else
    calculo.operacao_invalida
  end
  
  #puts "Ótimo, aguarde para dar continuidade."
  #sleep (1.5)

  puts "Deseja realizar uma nova conta?"
  puts "1 - Sim"
  puts "2 - Não"
  again = gets.chomp.to_i
  system('clear') # Use 'cls' no Windows
end
