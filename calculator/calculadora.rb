# Banguela's Calculator
# Jéssica, Karina, Lucas Galli e Lucas Lucatero
require_relative "funcoes_matematicas.rb"
require_relative "menu.rb"

imprime_saudacao

loop do 
# MENU
imprime_menu
operacao = gets.chomp.to_i

if operacao == 5
    puts ''
    puts 'Você escolheu sair. Bom te ver aqui, até mais!'
    puts ''
    exit
elsif (1..4).include?(operacao)
    puts ''
    puts "Digite o primeiro número e pressione enter"
    print "--> "
    num_1 = gets.chomp.gsub(",",".").to_f
    puts "Digite o segundo número e pressione enter"
    print "--> "
    num_2 = gets.chomp.gsub(",",".").to_f

    case operacao
    when 1
        #funcaosoma
        print '         O resultado é ', somar(num_1,num_2)
    when 2
        #funcaosubtracao
        print '         O resultado é ', diminuir(num_1,num_2)
    when 3 
        #funcaomulti
        print '         O resultado é ', multiplicar(num_1,num_2)
    when 4 
        #funcaodiv
        print '         O resultado é ', dividir(num_1,num_2)
    end

    pergunta_deseja_continuar

else
    puts ''
    puts 'Operação inválida, por favor escolha novamente'
end 

end