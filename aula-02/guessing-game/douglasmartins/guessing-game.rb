def menu
  puts "##################### JOGO DA ADIVINHAÇÃO #############################"
  puts "Escolha a OPÇÃO:"
  puts "1 - INICIAR O JOGO"
  puts "0 - SAIR"
end

loop do
  menu
  menu_opcao = gets.chomp.to_i

  case menu_opcao
  when 0
    puts "PROGRAMA ENCERRADO"
    exit 0
  when 1
    range_number = rand(0..10)
    puts "Tente adivinhar quantas medalhas de ouro o Brasil terá nas OLIMPÍADAS (entre 1 e 9): "
    adv_number = gets.chomp.to_i
    while range_number != adv_number do
      puts "NÃO ACERTOU! CONTINUE TENTANDO ..."
      adv_number = gets.chomp.to_i
    end
      puts "PARABÉNS!!! VOCÊ ACERTOU!!!"
    else
      puts "OPÇÃO INEXISTENTE!"
  end
end