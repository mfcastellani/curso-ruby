# Banguela's Calculator
# Jéssica, Karina, Lucas Galli e Lucas Lucatero
require_relative "math_functions.rb"
require_relative "menu.rb"

show_greetings

loop do 
# MENU
    show_menu
    operation = gets.chomp.to_i

    if operation == 5
        puts ''
        puts 'Você escolheu sair. Bom te ver aqui, até mais!'
        puts ''
        exit
    elsif (1..4).include?(operation)
        puts ''
        puts "Digite o primeiro número e pressione enter"
        print "--> "
        num_1 = gets.chomp.gsub(",",".").to_f
        puts "Digite o segundo número e pressione enter"
        print "--> "
        num_2 = gets.chomp.gsub(",",".").to_f

        case operation
            when 1
                #addition
                print '         O resultado é ', add(num_1,num_2)
            when 2
                #subtraction
                print '         O resultado é ', subtract(num_1,num_2)
            when 3 
                #multiplication
                print '         O resultado é ', multiply(num_1,num_2)
            when 4 
                #division
                print '         O resultado é ', divide(num_1,num_2)
        end

        ask_calculate_again

    else
        puts ''
        puts 'Operação inválida, por favor escolha novamente'
    end 

end