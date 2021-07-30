# Calculaora da Equipe Tiamat
# Responsáveis: - Douglas Martins Matos
#               - Franco Caldas
#               - Gabriela Batalha
#               - João Gilberto
#               - João Príscio

def somar(n,m)
  n+m
end
def diminuir(n,m)
  n-m 
end
def multiplicar(n,m)
  n*m 
end
def dividir(n,m)
  n/m 
end
def limpar
  #o famoso C da calculadora
end
def sair
  #utilizar o X
  exit 0
end

  #Fazer o prompt do programa. Texto de entrada

  val1 = "c"

  loop do
  
  resultado, val2 = 0
  
  #fazer um if para ver se quer sair ou limpar a qualquer momento

  if val1 == c
      print "Tecle o primeiro valor:"
      val1 = gets.chomp
      #Fazer a chamada para saída ou limpar
  end

  print "operador (+,-,*,/):"
  operador = gets.chomp
      #Fazer a chamada para saída ou limpar

  print "Tecle o valor:"
  val2 = gets.chomp
      #Fazer a chamada para saída ou limpar
  
  #método para transformar vírgula em ponto
  #método para fazer val1 e val2 em float
  #calculo do resultado
  #depois val1 = resultado
  #o print do resultado ou val1 (mesmo valor)
  end
  