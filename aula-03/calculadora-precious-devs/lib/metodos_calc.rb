require_relative "./calculo.rb"

def introduction
  puts '********************************'
  puts '        Calculadora'
  puts '********************************'
  puts 'Olá!'
  puts 'Esta calculadora realiza operações matemáticas entre dois números.'
end

def show_menu
  puts 'Digite o número da operação que você quer fazer:'
  puts ' 1) ==> Somar +'
  puts ' 2) ==> Subtrair -'
  puts ' 3) ==> Multiplicar *'
  puts ' 4) ==> Dividir /'
  puts ' ou pressione outra tecla qualquer se quiser sair da calculadora.'
  puts '--------------------------------'
end

def execute_calc operation
  puts "Legal! Você escolheu #{show_operation operation}"
  puts '--------------------------------'
  puts 'Digite o primeiro número:'
  number1 = gets.chomp
  puts '--------------------------------'
  puts 'Digite o segundo número:'
  number2 = gets.chomp
  result = calc(operation, number1, number2)
  return number1, number2, result
end

def show_operation operation
  symbol = case operation
  when '1'
    '+'
  when '2'
    '-'
  when '3'
    '*'
  when '4'
    '/'
  else 
    operation
  end
  symbol
end

def show_result calc_result, operation
  number1 = calc_result[0]
  number2 = calc_result[1]
  number3 = calc_result[2]

  puts "********************************"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Resultado da sua operação:"
  puts "#{number1} #{show_operation operation} #{number2} = #{number3}"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "********************************"
end

def repeat_calc 
  puts "Você gostaria de realizar outra operação?"
  puts ' S  ==> Sim'
  puts ' N  ==> Não'
  repeat = gets.chomp.upcase
  if repeat == 'N'
    puts "Você escolheu 'NÃO', então até mais e obrigado por usar a calculadora do grupo Precious Developers!"
    exit
  end
end