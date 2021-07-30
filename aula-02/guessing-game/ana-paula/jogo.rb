def jogo chute
  numero_magico = rand(11)
    numero_magico = 1 if numero_magico.zero?

    if [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].include?(chute) 
      puts "#{chute} é um bom chute!"
      if chute == numero_magico 
        puts "Wow, parabéns! Você acertou!!! #{numero_magico} era o número mágico!"
      elsif chute < numero_magico
        puts "Mas não foi dessa vez, o número mágico era #{numero_magico} e não #{chute}."
      elsif chute > numero_magico 
        puts "Mas você errou, o número mágico era #{numero_magico} e não #{chute}."
      end
    else
      puts "Seu chute precisa ver um número entre 1 e 10, ok?"
    end
end
