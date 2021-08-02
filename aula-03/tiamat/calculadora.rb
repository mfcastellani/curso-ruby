# Calculaora da Equipe Tiamat
# Responsaveis: - Douglas Martins Matos
#               - Franco Caldas
#               - Gabriela Batalha
#               - Joao Gilberto
#               - Joao Priscio

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
  puts 'Calculadora Tiamat encerrada.'
  exit(0)
end

def operador_valido
  operadores = ['+', '-', '*', '/', 'c', 'x']
  true if operadores.include?(@operador.downcase)
end

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
  if @val1.zero?
    puts 'Digite o primeiro valor e tecle ENTER para confirmar:'
    @val1 = gets.chomp
    sair if @val1.downcase == 'x'

    next if @val1.downcase == 'c' && limpar

    @val1[","] = "." if @val1.include?(",")
  end
  
  
  puts 'Escolha um dos operadores: + - * ou / e tecle ENTER para confirmar:'
  @operador = gets.chomp
  #Valida o operador digitado pelo usuário
  loop do
    break if operador_valido
    puts 'Operador inválido.'
    puts 'Escolha um dos operadores: + - * ou / e tecle ENTER para confirmar:'
    @operador = gets.chomp  
  end

  sair if @operador.downcase == 'x'
  next if @operador.downcase == 'c' && limpar
  
  puts 'Digite o segundo valor e tecle ENTER para confirmar:'
  @val2 = gets.chomp
  sair if @val2.downcase == 'x'
  next if @val2.downcase == 'c' && limpar

  if @val2.to_i.zero? && @operador == '/'
    puts 'Não é possível fazer a divisão por zero'
    @val1 = 0
    next
  end

  @val2[","] = "." if @val2.include?(",")

  @resultado = somar(@val1.to_f, @val2.to_f) if @operador == '+'
  @resultado = diminuir(@val1.to_f, @val2.to_f) if @operador == '-'
  @resultado = multiplicar(@val1.to_f, @val2.to_f) if @operador == '*'
  @resultado = dividir(@val1.to_f, @val2.to_f) if @operador == '/'

  puts "O resultado é #{@resultado}"

  @val1 = @resultado
end
