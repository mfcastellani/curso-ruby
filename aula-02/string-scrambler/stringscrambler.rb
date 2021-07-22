require_relative "./libs/example.rb"
require_relative "./libs/algorithm_2.rb"
require_relative "./libs/algorithm_1.rb"
require_relative "./libs/algorithm_3.rb"
require_relative "./libs/algorithm_4.rb"

def available_algorithms
  puts "A -> Algoritmo 1"
  puts "E -> Algoritimo de exemplo, por Marcelo Castellani"
  puts "2 -> Opção 2 de criptografia"
  puts "3 -> Algoritimo 3"
  puts "4 -> Algoritimo 4"
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
  when "A"
    algorithm_1 frase
  when "E"
    example_scrambler frase
  when "2"
    algorithm_2 frase
  when "2"
    algorithm_4 frase
  when "3"
    alg3_scrambler frase
  else
    "A opção digitada não é válida. Verifique e tente novamente!"
  end

puts "Resultado da execução: #{ret}"
puts "Bye!"
