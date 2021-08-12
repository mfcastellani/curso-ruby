# array
array = [1, 'Paulo', 1.0, true, 'Victor']

puts array.first
puts array.last
puts 
puts array.sample
puts 
array.each do |item| 
    puts item.to_s.reverse
end

puts
puts array.length
puts array.count

puts
puts array.empty?
puts [].empty?

puts array.include? 'Paulo'
puts array.include? 'Marcelo'

puts 
puts "Antes do pop #{array.inspect}"
puts array.pop
puts "Depois do pop #{array}"
puts array.pop
puts "Depois do pop #{array}"
puts array.pop
puts "Depois do pop #{array}"
puts array.pop
puts "Depois do pop #{array}"

puts 
array << "Marcelo"
array.push 100
array.insert(0, "Teste")
puts "Depois de inserir #{array}"

puts 
array.delete_at(2)
puts "Depois do delete_at #{array}"
array.delete(100)
puts "Depois do delete #{array}"
array.delete("Teste")
puts "Depois do delete #{array}"

puts
array.push "String"
puts array.inspect
array[1].reverse!
puts array.inspect

puts
array.push "String"
array.push "Marcelo"
array.push false
array.push true
array.push "Batata"
array.push 1
array.each_index do |index|
    if array[index].class == String
        array[index].reverse!
    end
end
puts array.inspect

pessoa1 = {:nome => 'Marcelo', :idade => 44}
pessoa2 = {:nome => 'Paulo', :idade => 19}
pessoa3 = {:nome => 'Jackson', :idade => 24}
pessoa4 = {:nome => 'Lucas', :idade => 39}

array = [pessoa1, pessoa2, pessoa3, pessoa4] 

array.each do |item|
    puts "nome : #{item[:nome]}"
    puts "idade: #{item[:idade]}"
end