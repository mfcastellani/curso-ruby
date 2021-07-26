# O guessing game é um jogo de adivinhação. O programa escolhe um número de 0 a 50 e o usuário tenta acertar.
# O programa retorna dicas sobre a proximidade de se acertar (quente ou frio) à medida que o palpite chega perto do número.
# Caso o usuário acerte o programa avisa, informa em quantas tentativas foram e retorna ao menu inicial.

loop do
    
    print "Seja Bem-vindo ao guessing game!"
    puts "Para começar escolha uma das opçãos abaixo"
    puts ""
    puts "0 - INICIAR JOGO"
    puts "1 - FINALIZAR PROGRAMA"
    option = gets.chomp.to_i

    case option
    when 1
        break
    when 0
        num = rand(50)
        guess = 0
        attempts = 0

        while guess != num
            puts "Escolha um número entre 0 e 50: "
            guess = gets.chomp.to_i
            if guess > 50
                puts "Por favor, escolha um número entre 0 e 50."
            elsif guess == num
                puts "Parabéns o número era #{num}." 
                puts "Você acertou em #{attempts} tentativas."
            elsif (num - guess).abs <= 5
                puts "Tá pegando fogo. Tente mais uma vez"
                attempts += 1
            elsif (num - guess).abs >= 6 and (num-guess).abs <= 10
                puts "Você está quente. Vamo que dá!"
                attempts += 1
            elsif (num - guess).abs >= 11 and (num-guess).abs <= 15
                puts "Você está morno!"
                attempts += 1
            else
                puts "Xii.. tá frio. Tente de novo"
                attempts += 1
            end
        end
    else 
        puts "Opção inválida. Por favor selecione 0 ou 1."
    end
end