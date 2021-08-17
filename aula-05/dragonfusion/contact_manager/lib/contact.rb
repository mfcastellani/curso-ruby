require 'cpf_cnpj'
require 'cli/ui'
require_relative './cpf_treatment'

@address_book = []

def new_contact
  puts CLI::UI.fmt '{{blue:Insira o nome do contato:}}'
  name = gets.chomp.capitalize
  puts CLI::UI.fmt '{{blue:Insira o telefone ou e-mail do contato:}}'
  contact = gets.chomp
  puts CLI::UI.fmt '{{blue:Insira o CPF do contato:}}'
  cpf = cpf_valid

  if @address_book.any? { |contact| contact[:cpf] == cpf }
    raise CLI::UI.fmt '{{red: Este CPF já está cadastrado na sua agenda}}'
  else
    insert_contact = { name: name, contact: contact, cpf: cpf }
    @address_book << insert_contact
    puts CLI::UI.fmt "{{v}} Inclusão de {{green:#{name}}} com o contato {{green:#{contact}}} e CPF {{green:#{cpf}}} feita com sucesso!"
  end
end

def listing_all_contacts
  puts CLI::UI.fmt '{{bold:Listando todos os contato:}}'
  puts ''
  @address_book.each do |contact|
    puts CLI::UI.fmt "{{bold:Nome: }}{{cyan:#{contact[:name]} }}{{bold:|}} {{bold:Contato: }}{{cyan:#{contact[:contact]} }}{{bold:|}} {{bold:CPF: }}{{cyan:#{contact[:cpf]}}}"
  end
end

def exit_cm
  puts CLI::UI.fmt '{{bold:Saindo do Contact Manager...}}'
  exit(0)
end
