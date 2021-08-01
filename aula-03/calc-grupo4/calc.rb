require_relative './lib/lib_calc'
require 'awesome_print'

calc = Calc.new

puts 'Digite o primeiro numero: '
num1 = gets.chomp.to_f
puts 'Digite o segundo número: '
num2 = gets.chomp.to_f

result = calc.add(num1, num2)
puts "A soma é: #{result}"
ap result
