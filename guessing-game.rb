def menu
    puts "1 - INICIAR O JOGO"
    puts "2 - SAIR"
end

puts "##################### JOGO DA ADIVINHAÇÃO #############################"
puts "MENU"

menu

puts "Escolha a OPÇÃO:"
menu_opcao = gets.chomp.to_i

case menu_opcao 
  when 1
    range_number = rand(0..10)
    puts "Tente adivinhar quantas medalhas de ouro o Brasil terá nas OLIMPÍADAS: "
    adv_number = gets.chomp.to_i
    while range_number != adv_number do
      puts "NÃO ACERTOU! CONTINUE TENTANDO ..."
      adv_number = gets.chomp.to_i
    end
    puts "PARABÉNS!!! VOCÊ ACERTOU!!!"
  when 2
    exit 0
  else
     puts "OPÇÃO INEXISTENTE!"
  end