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

    case opcao
    when '1'
        print "Insira item a ser adicionado: "
        item = gets.chomp
        lista_compras << item
        puts " Item #{item} adicionado com sucesso"
    when '2'
        print "Digite o item a ser excluído: "
        item = gets.chomp
        lista_compras.delete(item)
        puts "#{item} excluído da lista de compras"
    when '3'
        lista_compras.sort.each do |item|
            puts "Item: #{item}"
        end
    when '4'
        puts "Até mais!"
        break
    else
        puts 'Você digitou uma opção inválida!!!!!'
    end

    puts ''
end
