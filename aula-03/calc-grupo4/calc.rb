#! /usr/bin/env ruby

require_relative './assets/header'
require_relative './lib/lib_calc'
require 'awesome_print'

puts head.yellow

calc = Calc.new

puts 'Digite o primeiro numero: '
num1 = gets.chomp.to_f
puts 'Digite o segundo número: '
num2 = gets.chomp.to_f

result = calc.sum(num1, num2)
puts "O resultado da soma é #{result}".green
