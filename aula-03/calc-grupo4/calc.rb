#! /usr/bin/env ruby

require_relative './assets/menu'
require_relative './assets/header'
require_relative './lib/lib_calc'
require 'awesome_print'

puts head.yellow

calc = Calc.new

loop do
  puts available_operations.white

  operation = gets.chomp

  if operation.casecmp?('E')
    puts 'Bye bye!!'.white
    exit(0)
  end

  puts 'Digite o primeiro número: '.blue
  num1 = gets.chomp.to_f
  puts 'Digite o segundo número: '.blue
  num2 = gets.chomp.to_f

  # sleep 5

  result = case operation
           when '+', 'Somar'
             a = calc.sum(num1, num2)
             puts "O resultado da soma é: #{a}".green
           when '/', 'Dividir'
             b = calc.divide(num1, num2)
             puts "O resultado da divisão é: #{b}".green
           when '*', 'Multiplicar'
             c = calc.multiply(num1, num2)
             puts "O resultado da multiplicação é: #{c}".green
           when '-', 'Subtrair'
             d = calc.substract(num1, num2)
             puts "O resultado da subtração é: #{d}".green
           end
rescue StandardError => e
  puts "Erro ao calcular: #{e.message}".red
end
