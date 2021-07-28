# instruções de jogo
puts "Bem vindo ao jogo de adivinhação do Marcelo!!!!!"
puts "Instruções: digite um número e veja se é o que eu escolhi"
puts "            se quiser sair digite F"

# escolher o nosso número
numero_secreto = rand(1..10)

loop do
    # prompt do jogo
    puts "Eu escolhi um número entre 1 e 10, você sabe qual é?"
    print "===> "
    chute = gets.chomp
    puts "Sua escolha foi #{chute}"

    # verifica se foi digitado F
    if chute == "F"
        puts "Obrigado por participar, abraços!"
        exit(0)
    end

    # converte pra inteiro
    chute = chute.to_i

    # comparar os números
    if numero_secreto == chute
        puts "Parabéns, vc acertou!"
        exit(0)
    else
        puts "Hmm, vc errou. Tente novamente!"
    end
end