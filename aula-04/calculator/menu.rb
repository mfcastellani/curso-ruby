def show_menu
    puts ''
    puts  "|-----------------------------------------|"
    puts  "|              CALCULADORA                |"
    puts  "|-----------------------------------------|"
    puts  "|                                         |"
    puts  "|  Escolha a operação que deseja fazer:   |"
    puts  "|                                         |"
    puts  "|   1. Somar (+)                          |"
    puts  "|   2. Diminuir (-)                       |"
    puts  "|   3. Multiplicar (x)                    |"
    puts  "|   4. Dividir (/)                        |"
    puts  "|   5. Sair                               |"
    puts  "|                                         |"
    print "|   Operação: "
end

def show_greetings
    puts ''
    puts '      Olá, seja bem vindo à Calculadora!    '
end

def ask_calculate_again
    puts ''
    puts ''
    puts  "|         Deseja continuar?               |"
    puts  "|       Pressione S para Sim              |"
    puts  "|       Pressione N para Não              |"
    option = gets.chomp
    if option.upcase == "N"
        exit
    end
end