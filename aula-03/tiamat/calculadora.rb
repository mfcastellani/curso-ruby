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
  puts 'Você resetou a calculadora.'
  @val1 = 0
  true
end

def sair
  exit(0)
end

# Fazer o prompt do programa. Texto de entrada
puts "=============================================================="
puts "||                        .       .                         ||" 
puts "||                         )     (                          ||"
puts "||                        ((____/))                         ||"
puts "||                        ( @) (@ )                         ||"
puts "||                         )     (                          ||"
puts "||                        (_o_^_o_)                         ||"
puts "||                          V  V                            ||"
puts "||                                                          ||"
puts "|| ########## ## ######## ####      #### ####### ########## ||"
puts "||     ##     ## ##    ## ## ##    ## ## ##   ##     ##     ||"
puts "||     ##     ## ######## ##  ##  ##  ## #######     ##     ||"
puts "||     ##     ## ##    ## ##   ####   ## ##   ##     ##     ||"
puts "||                                                          ||"
puts "||                                                          ||"
puts "||                  CALCULADORA TIAMAT                      ||"
puts "||                                                          ||"
puts "|| INSTRUÇÕES:                                              ||"
puts "|| 1- Realize: Adição, Subtração, Divisão e Multiplicação;  ||"
puts "|| 2- Tecle C para limpar a operação;                       ||"
puts "|| 3- Tecle X para SAIR.                                    ||"
puts "=============================================================="

@val1 = 0

loop do
  # fazer um if para ver se quer limpar usando a letra "C" a qualquer momento
  if @val1.zero?
    puts 'Tecle o primeiro valor:'
    @val1 = gets.chomp
    sair if @val1 == 'x'
    # Reseta a calculadora caso o usuário tecle 'C'
    next if @val1.downcase == 'c' && limpar

    @val1[","] = "." if @val1.include?(",")
  end

  puts 'Escolha um dos operadores: + - * ou /:'
  @operador = gets.chomp
  sair if @operador == 'x'
  next if @operador.downcase == 'c' && limpar

  puts 'Tecle o valor:'
  @val2 = gets.chomp
  sair if @val2 == 'x'
  next if @val2.downcase == 'c' && limpar

  @val2[","] = "." if @val2.include?(",")

  @resultado = somar(@val1.to_f, @val2.to_f) if @operador == '+'
  @resultado = diminuir(@val1.to_f, @val2.to_f) if @operador == '-'
  @resultado = multiplicar(@val1.to_f, @val2.to_f) if @operador == '*'
  @resultado = dividir(@val1.to_f, @val2.to_f) if @operador == '/'

  puts "O resultado é #{@resultado}"

  @val1 = @resultado
  # método para transformar vírgula em ponto
end
