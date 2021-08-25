require 'cli/ui'
require 'tty-box'
require 'sqlite3'

def delete_options
    puts ''
    CLI::UI::Prompt.ask('Escolha a forma de exclusão do contato 👇') do |handler|
      handler.option('Exclusão por nome') { delete_contact_by_name }
      handler.option('Exclusão por CPF') { delete_contact_by_cpf }
      handler.option('Exclusão por e-mail ou telefone') { delete_contact_by_email_or_tel }
      handler.option('Sair') {exit_do}
    end
end

def exit_do
  puts CLI::UI.fmt '{{bold:Saindo das opções de exclusão...}}'
  at_exit do
  end  
end

def delete_contact_by_name
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o nome da pessoa que deseja excluir da agenda:}}'
  puts ''
  name = gets.chomp
  puts CLI::UI.fmt '{{bold:Deletando contato...}}'
  db.execute('DELETE FROM contacts WHERE (name= ?) ', [name])
  puts CLI::UI.fmt '{{bold:Sucesso}}{{v}}:Você deletou o contato.}}'

  raise CLI::UI.fmt '{{red:A exclusão não pode ser feita com o campo vazio, Tente novamente.}}' if name.empty?
end

def delete_contact_by_email_or_tel
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o e-mail ou telefone da pessoa que deseja excluir da agenda:}}'
  puts ''
  contact1 = gets.chomp
  puts CLI::UI.fmt '{{bold:Deletando contato...}}'
  db.execute('DELETE FROM contacts WHERE (means_contact= ?) ', [contact1])
  puts ''
  puts CLI::UI.fmt '{{bold:Sucesso}}{{v}}:Você deletou o contato.}}'

  raise CLI::UI.fmt '{{red:A exclusão não pode ser feita com o campo vazio, Tente novamente.}}' if contact1.empty?
end

def delete_contact_by_cpf
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o número do CPF do contato que deseja excluir:}}'
  cpf = cpf_valid
  puts ''
  puts CLI::UI.fmt '{{bold:Deletando contato...}}'
  db.execute('DELETE FROM contacts WHERE (cpf= ?) ', [cpf])
  puts ''
  puts CLI::UI.fmt '{{bold:Sucesso}}{{v}}:Você deletou o contato.}}'

  raise CLI::UI.fmt '{{red:A exclusão não pode ser feita com o campo vazio, Tente novamente.}}' if cpf.empty?
end
