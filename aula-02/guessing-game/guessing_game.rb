# frozen_string_literal: true

@number = rand(10)

def escolherls
    puts 'Tente adivinhar o número de 0 a 10 ou digite 99 para sair'
    @escolha = gets.chomp.to_i
    if @escolha == 99
        puts 'Você saiu do programa.'
        exit 0
    elsif @escolha > 10
        puts 'Número maior que o permitido'
        escolher
    elsif @escolha.negative?
        puts 'Número menor que o permitido'
        escolher
    
    end
end

while true do
    escolher
    if @escolha == @number
        puts 'ACERTOU!'
        break
    elsif @escolha > @number
        puts 'O número é menor do que esse.'
    elsif @escolha < @number
        puts 'O número é maior do que esse.'
    end
end
