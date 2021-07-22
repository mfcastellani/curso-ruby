# frozen_string_literal: true

@number = rand(10)

def escolher
    puts 'Tente adivinhar o número de 0 a 10 ou digite 99 para sair'
    @escolha = gets.chomp.to_i
    if @escolha > 10
        puts 'Número maior que o permitido'
        escolher
    elsif @escolha.negative?
        puts 'Número menor que o permitido'
        escolher
    elsif @escolha == 99
        puts 'Você saiu do programa.'
    end
end

escolher

if @escolha == @number
    puts 'ACERTOU!'
elsif @escolha > @number
    puts 'O número é menor do que esse.'
    escolher
elsif @escolha < @number
    puts 'O número é maior do que esse.'
    escolher
end


