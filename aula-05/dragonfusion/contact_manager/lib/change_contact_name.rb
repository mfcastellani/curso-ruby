require_relative '../database/queries/update_data.rb'
require 'sqlite3'


def change_contact_name_by_cpf
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o número do CPF do contato que deseja alterar o nome:}}'
  cpf = cpf_valid

  contact_index = verify_cpf(cpf)

  puts CLI::UI.fmt "{{bold:Digite o novo nome para o CPF: }}{{green:#{cpf}}}"
  new_name = gets.chomp
  raise CLI::UI.fmt '{{red: O campo novo nome não pode ser vazio. Tente novamente.}}' if new_name.empty?

  update_name(new_name,cpf)
  puts ''
  puts CLI::UI.fmt "{{bold:Sucesso}}{{v}}: Você alterou o CPF {{cyan:#{cpf}}} para o nome {{cyan:#{new_name}}}"

  raise CLI::UI.fmt '{{red: CPF não encontrado. Verifique o dado e tente novamente}}' if contact_index == []
end
