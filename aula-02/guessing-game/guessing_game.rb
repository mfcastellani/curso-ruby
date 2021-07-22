# frozen_string_literal: true

number = rand(10)

def escolher
    puts 'Tente adivinhar o número de 0 a 10'
    @escolha = gets.chomp.to_i
end

escolher

if @escolha > number
    puts 'O número é menor do que esse.'
    escolher
elsif @escolha < number
    puts 'O número é maior do que esse.'
    escolher
else
    puts 'ACERTOU!'
end
