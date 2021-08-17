require 'cpf_cnpj'

@address_book = []

def new_contact
  puts '*** Criando novo contato ***'
  puts ''
  puts 'Insira o nome do contato'
  print '> '
  name = gets.chomp
  puts ''
  puts 'Insira o telefone ou e-mail do contato'
  print '> '
  contact = gets.chomp
  puts ''
  puts 'Insira o CPF do contato (apenas números)'
  print '> '
  cpf = gets.chomp
  puts ''
  cpf = CPF.new(cpf)
  
  until cpf.valid? == true
    puts "CPF inválido! Digite um número válido de CPF."
    print '> '
    cpf = gets.chomp
    cpf = CPF.new(cpf)
    puts ''
  end
    if @address_book.any? { |contact| contact[:cpf] == cpf }
      raise 'Este CPF já está cadastrado na sua agenda!'
    else
      insert_contact = { name: name, contact: contact, cpf: cpf }
      @address_book << insert_contact
      puts CLI::UI.fmt "Inclusão de {{green:#{name}}} com o contato {{green:#{contact}}} e CPF {{green:#{cpf}}} feita com sucesso!"
    end
end

def listing_all_contacts
  puts "\e[H\e[2J"
  puts '*** Exibindo todos os contatos ***'
  puts ''
  @address_book.each do |contact|
    puts "Nome: #{contact[:name]} | Contato: #{contact[:contact]} | CPF: #{contact[:cpf]}"
    puts ''
# Insert a prompt for a key before returning to the main menu
  end
end

def exit_cm
  puts 'Saindo do Contact Manager...'
  exit(0)
end
