require_relative "./calculo.rb"

def apresentacao
  puts '********************************'
  puts '        Calculadora'
  puts '********************************'
  puts 'Olá!'
  puts 'Esta calculadora realiza operações matemáticas entre dois números.'
end

def mostrar_menu
  puts 'Digite o número da operação que você quer fazer:'
  puts ' 1) ==> Somar +'
  puts ' 2) ==> Subtrair -'
  puts ' 3) ==> Multiplicar *'
  puts ' 4) ==> Dividir /'
  puts ' ou pressione outra tecla qualquer se quiser sair da calculadora.'
  puts '--------------------------------'
end

def executar_calculo operacao
  puts "Legal! Você escolheu #{mostrar_operacao operacao}"
  puts '--------------------------------'
  puts 'Digite o primeiro número:'
  numero1 = gets.chomp
  puts '--------------------------------'
  puts 'Digite o segundo número:'
  numero2 = gets.chomp
  resultado = calculo(operacao, numero1, numero2)
  return numero1, numero2, resultado
end

def mostrar_operacao operacao
  simbolo = case operacao
  when '1'
    '+'
  when '2'
    '-'
  when '3'
    '*'
  when '4'
    '/'
  else 
    operacao
  end
  simbolo
end

def mostrar_resultado resultado_calculo, operacao
  numero1 = resultado_calculo[0]
  numero2 = resultado_calculo[1]
  numero3 = resultado_calculo[2]

  puts "********************************"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Resultado da sua operação:"
  puts "#{numero1} #{mostrar_operacao operacao} #{numero2} = #{numero3}"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "********************************"
end

def repetir_calculo 
  puts "Você gostaria de realizar outra operação?"
  puts ' S  ==> Sim'
  puts ' N  ==> Não'
  repetir = gets.chomp.upcase
  if repetir == 'N'
    puts "Você escolheu 'NÃO', então até mais e obrigado por usar a calculadora do grupo Precious Developers!"
    exit
  end
end