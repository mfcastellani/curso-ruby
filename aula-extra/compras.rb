lista_compras = []

def menu
    puts "1- Adicionar um item na lista."
    puts "2- Apagar um item da lista."
    puts "3- Imprimir a lista atualizada."
    puts "4- Sair do programa."
end

loop do
    menu
    print "Digite a opção: "
    opcao = gets.chomp


    if opcao == '4'
        puts "Até mais!"
        break
    end 

end
