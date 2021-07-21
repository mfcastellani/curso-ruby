require_relative "./libs/example.rb"

def available_algorithms
  puts
  puts "E -> Algoritimo de exemplo, por Marcelo Castellani"
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
  when "E"
    example_scrambler frase
  else
    "A opção digitada não é válida. Verifique e tente novamente!"
  end

puts "Resultado da execução: #{ret}"
puts "Bye!"
