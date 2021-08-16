require 'cpf_cnpj'
require 'cli/ui'

@address_book = []

def new_contact
  puts CLI::UI.fmt '{{blue:Insira o nome do contato:}}'
  name = gets.chomp
  puts CLI::UI.fmt '{{blue:Insira seu telefone ou e-mail:}}'
  contact = gets.chomp
  puts CLI::UI.fmt '{{blue:Insira o seu CPF:}}'
  cpf = gets.chomp

  if @address_book.any? { |contact| contact[:cpf] == cpf }
    raise CLI::UI.fmt '{{red: Este CPF já está cadastrado na sua agenda}}'
  else
    insert_contact = { name: name, contact: contact, cpf: cpf }
    @address_book << insert_contact
    puts CLI::UI.fmt "{{v}} Inclusão de {{green:#{name}}} com o contato {{green:#{contact}}} e CPF {{green:#{cpf}}} feita com sucesso!"
  end
end

def listing_all_contacts
  puts CLI::UI.fmt '{{yellow:Listando todos os contato:}}'
  @address_book.each do |contact|
    puts "Nome: #{contact[:name]} | Contato: #{contact[:contact]} | CPF: #{contact[:cpf]}"
  end
end

def exit_cm
  puts 'Saindo do Contact Manager...'
  exit(0)
end
