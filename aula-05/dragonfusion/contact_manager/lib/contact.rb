require 'cpf_cnpj'
require 'cli/ui'
require_relative './cpf_handler'
require_relative './change_contact_name'
require_relative './change_form_contact'
require_relative './delete_contact'
require_relative '../database/queries/search_one'

class Contact
  def new_contact
    puts CLI::UI.fmt '{{blue:Insira o nome do contato:}}'
    name = gets.chomp.capitalize
    puts CLI::UI.fmt '{{blue:Insira o telefone ou e-mail do contato:}}'
    contact = gets.chomp
    puts CLI::UI.fmt '{{blue:Insira o CPF do contato:}}'
    cpf = cpf_valid

    db.execute('INSERT INTO contacts(name,means_contact,cpf) VALUES (?,?,?) ', [name, contact, cpf])
    puts CLI::UI.fmt "{{v}} Inclusão de {{green:#{name}}} com o contato {{green:#{contact}}} e CPF {{green:#{cpf}}} feita com sucesso!"

    if SQLite::ConstraintException:: UNIQUE constraint failed: contacts.cpf
      raise 'CPF já cadastrado. Verifique os dados e tente novamente'
    end
  end

  def list_one_options
    puts ''
    CLI::UI::Prompt.ask('Consultar por👇:') do |handler|
      handler.option('Nome') { search_one_by_name }
      handler.option('CPF') { search_one_by_cpf }
      handler.option('E-mail ou telefone') { search_one_by_means_contact }
      handler.option('Voltar') {}
    end
  end

  def listing_all_contacts
    puts ''
    puts CLI::UI.fmt '{{bold:Listando todos os contatos:}}'
    puts ''
    @address_book.each do |contact|
      puts CLI::UI.fmt "{{bold:Nome: }}{{cyan:#{contact[:name]} }}{{bold:|}} {{bold:Contato: }}{{cyan:#{contact[:contact]} }}{{bold:|}} {{bold:CPF: }}{{cyan:#{contact[:cpf]}}}"
    end
  end

  def change_contact_name
    change_contact_name_by_cpf
  end

  def change_form_contact
    change_form_contact_by_cpf
  end

  def change_contact
    puts ''
    puts CLI::UI.fmt '{{bold:Digite o número do CPF do contato que deseja alterar:}}'
    cpf = cpf_valid

    e = @address_book.index
    contact_index = e.each { |contact| contact[:cpf] == cpf }
    puts CLI::UI.fmt "{{bold:Digite o novo nome para o CPF: }}{{green:#{cpf}}}"
    new_name = gets.chomp
    raise CLI::UI.fmt '{{red: O campo novo nome não pode ser vazio. Tente novamente.}}' if new_name.empty?

    puts CLI::UI.fmt "{{bold:Digite o novo contato para o CPF: }}{{green:#{cpf}}}"
    new_contact = gets.chomp
    raise CLI::UI.fmt '{{red:O campo novo contato não pode ser vazio. Tente novamente}}' if new_contact.empty?

    b = { name: new_name, contact: new_contact }
    c = @address_book[contact_index].merge!(b)
    puts ''
    puts CLI::UI.fmt "{{bold:Sucesso}}{{v}}: Você alterou o CPF {{cyan:#{c[:cpf]}}} para o nome {{cyan:#{c[:name]}}} e contato {{cyan:#{c[:contact]}}}"

    raise CLI::UI.fmt '{{red: CPF não encontrado. Verifique o dado e tente novamente}}' if contact_index = nil?
  end

  def delete_contact
    delete_contact_by_cpf
  end

  def exit_cm
    puts CLI::UI.fmt '{{bold:Saindo do Contact Manager...}}'
    exit(0)
  end
end
