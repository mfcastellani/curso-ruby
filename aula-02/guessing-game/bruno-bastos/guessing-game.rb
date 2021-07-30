puts 'Bem vindo ao jogo da adivinhação!'
random_number = rand(26)
num_guesses = 0
puts 'Escolha um número de  0 a 25:'

loop do
  print "\nQual é o seu palpite?"
  guess = gets.chomp.to_i
  num_guesses += 1

  if guess == random_number
    puts 'Você acertou PARABÉNS!'
    puts "Você levou #{num_guesses} vezes para tentar adivinhar o meu número!"
    exit
  else
    message = if guess > random_number
                puts 'Seu palpite está alto.'
              else
                puts 'Seu palpite está baixo.'
              end

    puts message
  end
end
