require_relative "./jogo.rb"

def apresentar
  puts "Olá! Você vai começar o jogo de adivinhação"
  puts "Qual o seu nome?" 
  nome = gets.chomp
  nome = nome.capitalize()
  puts "Legal #{nome}, muito prazer!"
  puts "Vamos começar?"
  puts " ------------------------------------ "
end

def adivinhar
  puts "Adivinhe um número entre 1 e 10?"
  chute = gets.chomp.to_i
  jogo chute
end

apresentar
adivinhar