require 'cpf_cnpj'

@address_book = []

def new_contact
  puts 'Insira o nome do contato: '
  name = gets.chomp
  puts 'Insira seu telefone ou e-mail: '
  contact = gets.chomp
  puts 'Insira o seu CPF: '
  cpf = gets.chomp

  if @address_book.any? { |contact| contact[:cpf] == cpf }
    raise 'Este CPF já está cadastrado na sua agenda'
  else
    insert_contact = { name: name, contact: contact, cpf: cpf }
    @address_book << insert_contact
    puts "Inclusão de #{name} com o contato #{contact} e CPF #{cpf} feita com sucesso!"
  end
end

def listing_all_contacts
  @address_book.each do |contact|
    puts 'Listando todos os contato: '
    puts "Nome: #{contact[:name]} | Contato: #{contact[:contact]} | CPF: #{contact[:cpf]}"
  end
end

def exit_cm
  puts 'Saindo do Contact Manager...'
  exit(0)
end
