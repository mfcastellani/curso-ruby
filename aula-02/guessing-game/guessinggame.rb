puts "Vamos começar o Guessing Game?"

num = rand(100)

num2 = 0

while num2 != num 
  print "Digite um número: "
  num2 = gets.chomp.to_i
  if num2 == num
    puts "Você ganhou, o número é: #{num}"
  elsif (num - num2).abs < 10
    puts "Você está quente"
  elsif (num - num2).abs in [10..25]
    puts "Você está morno"
  else
    puts "Você está frio"
  end
end