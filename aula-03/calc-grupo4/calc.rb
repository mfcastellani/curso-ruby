#! /usr/bin/env ruby

require_relative './assets/header'
require_relative './lib/lib_calc'

puts "Calculadora"
puts "-----------"

puts "Escolha a operacao!"
puts "1 Adicao"
puts "2 Subtracao"
puts "3 Divisao"
puts "4 Multiplicacao"
puts "0 Para sair"

calc = Calc.new

puts 'Digite o numero da operação que será feita: '
operacao = gets.chomp.to_f
puts 'Digite o primeiro número para participar da operação: '
n1 = gets.chomp.to_f
puts 'Digite o segundo número para participar da operação: '
n2 = gets.chomp.to_f



while true
    if operacao == 1
        puts "O resultado da soma é #{calc.sum(n1, n2)}"
        redo
    end    
    if operacao == 2
        puts "O resultado da subtração é #{calc.subtract(n1, n2)}"
        redo
    end
    if operacao == 3
        puts "O resultado da divisão é #{calc.divide(n1, n2)}"
        redo
    end
    if operacao == 4
        puts "O resultado da multiplicação é #{calc.multiply(n1, n2)}"
        redo
    end
    if operacao == ""
        calculo.null
        redo
    end
    if operacao == 0
        break
    end
end

