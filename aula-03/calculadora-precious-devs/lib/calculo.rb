def calc operation, number1, number2
  number1 = number1.to_f
  number2 = number2.to_f

  result = case operation   
  when '1' 
    number1 + number2
  when '+'
    number1 + number2
  when '2'
    number1 - number2
  when '-'
    number1 - number2
  when '3'
    number1 * number2
  when '*'
    number1 * number2
  when '4'
    number1 / number2
  when '/'
    number1 / number2
  end
  result
end