number = rand(1..10)

gnum = 0

puts "#"*100
puts "-"*100
puts "Jogo da Adivinhação"
puts "Digite um numero de 1 a 10 para servir de chute"
puts "ou digite 0 para sair."
puts "-"*100
puts "#"*100

gnum = gets.chomp
gnum = gnum.to_i
number = number.to_i

    if  gnum == 0 
        puts "Tchau"
    else
        while gnum != number
            puts "Digite outro valor você não acertou"
            gnum = gets.chomp
            gnum = gnum.to_i
                if gnum == number
                    puts "Você acertou! O Numero era o #{number}"
                        break  
                end
        end
               
    end

