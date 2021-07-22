require_relative "./libs/example.rb"
require_relative "./libs/algorithm_1.rb"
require_relative "./libs/algorithm_2.rb"
require_relative "./libs/algorithm_3.rb"
require_relative "./libs/algorithm_4.rb"

def available_algorithms
  puts "1 -> Algoritmo 1"
  puts "2 -> Algoritmo 2"
  puts "3 -> Algoritimo 3"
  puts "4 -> Algoritimo 4"
  puts "5 -> Algoritimo de exemplo, por Marcelo Castellani"
end

# receber frase
print "Digite a frase que deseja embaralhar: "
frase = gets.chomp

# imprimir algoritimos disponíveis
available_algorithms

# selecionar o algoritimo a usar
print "Selecione o algoritimo que deseja usar: "
algoritimo = gets.chomp

# executar o embaralhamento
ret = case algoritimo   
  when "1"
    algorithm_1 frase
  when "2"
    algorithm_2 frase
  when "3"
    algorithm_3 frase
  when "4"
    algorithm_4 frase
  when "5"
    example_scrambler frase
  else
    "A opção digitada não é válida. Verifique e tente novamente!"
  end

puts "Resultado da execução: #{ret}"
puts "Bye!"
