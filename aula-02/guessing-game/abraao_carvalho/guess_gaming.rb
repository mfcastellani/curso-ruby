puts "Welcome to the Guessing Game ! "
print "Introduce yourself: "

name = gets.chomp

puts "Welcome #{name} !"

number = rand(0...100)

puts "Please guess the number between 0 and 100"
winner = false

while winner == false
  guess = gets.chomp.to_i

  if guess > number then
    puts "Sorry, to high. Keep trying ! "
  
  elsif guess < number then
    puts "Sorry, to low. Try again ! "
  
  else
    puts "Congrats #{name}, you win !"
    winner = true
  end
end
