# frozen_string_literal: true

number = rand(10)

def escolher
    puts 'Tente adivinhar o número de 0 a 10 ou digite 99 para sair'
    @escolha = gets.chomp.to_i
end

escolher

if @escolha == 99
    puts "Você saiu do programa."
elsif @escolha > number
    puts 'O número é menor do que esse.'
    escolher
elsif @escolha < number
    puts 'O número é maior do que esse.'
    escolher
else
    puts 'ACERTOU!'
end
