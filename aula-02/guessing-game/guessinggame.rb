puts "Vamos começar o Guessing Game?"
puts "Voce deverá adivinhar um número entre 1 e 100"


loop do
  puts "Escolha uma opção"
  puts "1 - para jogar"
  puts "0 - para sair"

  print "Opção: "
  opcao = gets.chomp.to_i

  case opcao
  when 0
    break
  when 1
    num = rand(100)

    num2 = 0

    pontos = 100

    while num2 != num 
      print "Digite um número: "
      num2 = gets.chomp.to_i
      if num2 == num
        puts "Você ganhou, o número é: #{num}"
        puts "Sua pontuação foi: #{pontos}"
      elsif (num - num2).abs < 10
        puts "Você está quente"
        pontos -= 1
      elsif (num - num2).abs in [10..25]
        puts "Você está morno"
        pontos -=1
      elsif num2 == 0
        break
      else
        puts "Você está frio"
        pontos -=1
      end
    end
  else
    puts"Operação inválida"
  end
end


