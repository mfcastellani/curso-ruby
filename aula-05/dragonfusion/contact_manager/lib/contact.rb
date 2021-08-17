require 'cpf_cnpj'
require 'cli/ui'

@address_book = []

def new_contact
  puts CLI::UI.fmt '{{blue:Insira o nome do contato:}}'
  name = gets.chomp.capitalize
  puts CLI::UI.fmt '{{blue:Insira seu telefone ou e-mail:}}'
  contact = gets.chomp
  puts CLI::UI.fmt '{{blue:Insira o seu CPF:}}'
  cpf_prompt = gets.chomp
  cpf = CPF.new(cpf_prompt)
  cpf_formatted = cpf.formatted

  if @address_book.any? { |contact| contact[:cpf] == cpf_formatted }
    raise CLI::UI.fmt '{{red: Este CPF já está cadastrado na sua agenda}}'
  else
    insert_contact = { name: name, contact: contact, cpf: cpf_formatted }
    @address_book << insert_contact
    puts CLI::UI.fmt "{{v}} Inclusão de {{green:#{name}}} com o contato {{green:#{contact}}} e CPF {{green:#{cpf_formatted}}} feita com sucesso!"
  end
end

def listing_all_contacts
  puts CLI::UI.fmt '{{bold:Listando todos os contato:}}'
  puts ''
  @address_book.each do |contact|
    puts CLI::UI.fmt "{{bold:Nome: }}{{cyan:#{contact[:name]} }}{{bold:|}} {{bold:Contato: }}{{cyan:#{contact[:contact]} }}{{bold:|}} {{bold:CPF: }}{{cyan:#{contact[:cpf]}}}"
  end
end

def list_contact_by_key; end

def change_contact_by_cpf
  puts CLI::UI.fmt '{{bold:Digite o CPF do contato que deseja alterar:}}'
  cpf = gets.chomp
  puts CLI::UI.fmt '{{bold:Qual campo deseja alterar: Nome ou email?}}'
  option = gets.chomp.downcase
  puts CLI::UI.fmt '{{bold:Alterando contato por CPF:}}'
  puts ''

  if @address_book.any? { |contact| contact[:cpf] == cpf }

    puts CLI::UI.fmt "{{v}} Nome alterado para {{green:#{name}}} com o contato {{green:#{contact}}} e CPF {{green:#{cpf}}} feita com sucesso!"
  else
    raise CLI::UI.fmt '{{red: Este CPF não está cadastrado na sua agenda}}'
  end
end

def exit_cm
  puts CLI::UI.fmt '{{bold:Saindo do Contact Manager...}}'
  exit(0)
end
