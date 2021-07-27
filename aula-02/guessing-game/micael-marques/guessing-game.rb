puts 'Welcome to the game. The guessing game'

total = rand(101)

tentativa = 0

puts 'Escolha um número de 0 a 100:'

loop do
  adv = gets.chomp.to_i
  tentativa += 1
  if adv > total
    puts "Menor que isso\n"
  elsif adv < total
    puts 'Maior que isso'

  elsif adv == total
    puts "Parabéns, você acertou.\n"
    puts "#{tentativa}. Esse foi o numero de vezes que você chutou."
    if tentativa > 10
      puts 'Finalmente!'
      puts 'Sem sorte hoje, amigo?!'
      exit
    elsif tentativa < 10
      puts 'Com muita sorte, ein.'
      exit
    elsif tentativa == 1
      puts 'Se tentar de novo não consegue assim.'
      exit
    end
  end
end