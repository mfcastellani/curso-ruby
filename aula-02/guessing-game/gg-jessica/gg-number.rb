puts 'Defina o ínicio do range de números inteiros: '
ini = gets.to_i
puts 'Defina o fim do range de números inteiros: '
fim = gets.to_i
ramdom = rand(ini..fim)
chances = Math.log(fim-ini+1,2).round
puts 'Você só tem ' + chances.to_s + ' chances'

count = 0 

while count < chances
    count+= 1

    puts 'Adivinhe o número: '
    numero = gets.to_i

    if numero == ramdom
        puts 'Parabéns, você adivinhou o número, em ' + count.to_s + ' tentativas'
        break
    elsif numero > ramdom
        puts 'O número sorteado é menor que esse! Tente denovo'
    elsif numero < ramdom
        puts 'O número sorteado é maior que esse! Tente denovo'
    end
end

if count >= chances
    puts 'O número era: ' + ramdom.to_s
    puts 'Mais sorte na próxima vez :)'
end
    
    
