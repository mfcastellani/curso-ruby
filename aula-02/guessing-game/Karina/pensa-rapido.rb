puts "----------> PENSA RÁPIDO <----------"
puts "- Amanhã não é quarta nem quinta."
puts "- Ontem não foi sexta nem sábado."
puts "- Hoje não é quinta, nem segunda ou domingo."
puts "       QUE DIA É HOJE?"

resposta = gets.chomp


until  resposta == "sexta" || resposta == "sexta-feira"
    puts "Você errou, tente outra vez!"
    resposta = gets.chomp
end
puts "Você Acertoooooou!"