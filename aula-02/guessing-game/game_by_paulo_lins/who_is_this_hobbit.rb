puts '========================================'
puts '|          Quem é o Hobbit?!           |'
puts '|    ------------------------------    |'
puts '|       Tem um hobbit saindo da        |'
puts '|         toca. Você consegue          |'
puts '|       adivinhar qual hobbit é?       |'
puts '|                                      |'
puts '|       Será Bilbo, Frodo, Sam,        |'
puts '|          Merry ou Pippin?            |'
puts '|                                      |'
puts '|       Que a senhora de Lothlórien    |'
puts '|       lhe ajude, pois os danados     |'
puts '|               são rápidos!           |'
puts '|                                      |'
puts '|                            paulolins |'
puts '========================================'
puts 'O jogo começou...'
puts 'Pressione Ctrl+C se desejar sair'
puts ''

hobbits = %w[Frodo Sam Merry Pippin Bilbo]
rand_hobbit = hobbits.sample

puts 'Rápido, escreva o nome do hobbit que saiu da toca: '
hobbit = gets.chomp

until hobbit == rand_hobbit
  puts 'Você ainda não conseguiu ver o hobbit! Lá vem ele de novo.'
  puts 'Agora, escreva novamente: '
  hobbit = gets.chomp
end

puts "Parabéns, você conseguiu ver o #{hobbit} sair da toca."
