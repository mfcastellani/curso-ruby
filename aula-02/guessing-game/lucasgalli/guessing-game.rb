# Number Guessing Game!
secret_number = rand (1..10)
attempts = 3
player = ""

puts "Hello, human! Let's play a guessing game!\nPlease type in your name and press <return>."
player = gets.chomp
player = player.downcase
player = player.capitalize()
if player == "Lucas"
  puts "Now that's a nice name!!!"
end

puts "Okay, #{player}, you have #{attempts} attempts to guess an integer from 1 to 10"

while attempts > 0
  puts  "Please enter your guess and hit <return>.\nYou have #{attempts} attempt(s) left!"
  guess = gets.to_i
  attempts -= 1

  if guess < secret_number
    puts "Meh... too low."
  elsif guess > secret_number
    puts "Whoa, that was high!"
  end

  break if guess == secret_number
end

if guess == secret_number
  puts  "You guessed right! Congratulations!"
else
  puts "You have no more attempts left, #{player}. Game over!"
end

