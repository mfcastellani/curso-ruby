# Calculaora da Equipe Tiamat
# Responsáveis: - Douglas Martins Matos
#               - Franco Caldas
#               - Gabriela Batalha
#               - João Gilberto
#               - João Príscio

def somar(num1, num2)
  num1 + num2
end

def diminuir(num1, num2)
  num1 - num2
end

def multiplicar(num1, num2)
  num1 * num2
end

def dividir(num1, num2)
  num1 / num2
end

def limpar
  loop?
end

def sair
  exit(0)
end

# Fazer o prompt do programa. Texto de entrada
puts 'A qualquer momento use x para sair ou c para resetar a calculadora'

val1 = 0

loop do
  # fazer um if para ver se quer limpar usando a letra "C" a qualquer momento
  if val1.zero?
    puts 'Tecle o primeiro valor:'
    val1 = gets.chomp
    sair if val1 == 'x'
  end

  puts 'Escolha um dos operadores: + - * ou /:'
  operador = gets.chomp
  sair if operador == 'x'
  # Fazer a chamada para saída ou limpar

  puts 'Tecle o valor:'
  val2 = gets.chomp
  sair if val2 == 'x'
  # Fazer a chamada para saída ou limpar

  resultado = somar(val1.to_f, val2.to_f) if operador == '+'
  resultado = diminuir(val1.to_f, val2.to_f) if operador == '-'
  resultado = multiplicar(val1.to_f, val2.to_f) if operador == '*'
  resultado = dividir(val1.to_f, val2.to_f) if operador == '/'

  puts "O resultado é #{resultado}"

  val1 = resultado
  # método para transformar vírgula em ponto
end
