puts "-------------Jogo dos Números------------- \n \n \n"

puts "Instruções: você tera 3 chances para acertar\no número que foi sorteado.\n\n"
puts "--May the Force be with you.--\n\n"

chances = 0
numsort = rand(10)
tentativas = 1


while [true] do 

    
    puts "Digite um numero de 0 a 10: \n\n"
    puts "tentativa número #{tentativas}: \n" 
    num = gets.chomp.to_i 
    chances +=1
    tentativas +=1
     
    if num == numsort
        system 'clear'
        puts "PARABENS LEK\n"
        break
    end

    if chances == 3
        system 'clear'
        puts "Voce excedeu o numero de tentativas, não foi dessa vez !!"
        break
    end

    system 'clear'

    
end