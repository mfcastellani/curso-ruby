puts 'Bem vindo ao guessing game!'

total_num = rand(101)

total_try_num = 0

puts 'Escolha um número de  0 a 100:'

puts 'Chuta um número aí, fera'

loop do
  adv = gets.chomp.to_i
  total_try_num += 1
  if adv > total_num
    puts "Chuta baixo, fera, baixinho...\n"
  elsif adv < total_num
    puts 'Preciso pensar alto! CHUTA ALTO!'

  elsif adv == total_num
    puts "É isso, cara, acertou\n"
    puts "Você levou #{total_try_num} tentativas para adivinhar."
    if total_try_num > 10
      puts 'Pô, demorou um cadinho, hein?'
      exit
    elsif total_try_num < 10
      puts 'GÊNIO, LENDA, CRAQUE DA BOLA'
      exit
    elsif total_try_num == 1
      puts 'KKKKKKK VAI ME FALAR QUE FOI HABILIDADE? JOGA NA LOTERIA AÍ'
      exit
    end
  end
end