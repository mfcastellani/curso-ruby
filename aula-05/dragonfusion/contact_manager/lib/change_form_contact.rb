require_relative '../database/queries/update_data.rb'


def change_form_contact_by_cpf
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o número do CPF da pessoa que você precisa alterar o meio contato:}}'
  cpf = cpf_valid
  
  contact_index = verify_cpf(cpf)

  puts CLI::UI.fmt "{{bold:Digite o novo contato para o CPF: }}{{green:#{cpf}}}"
  new_contact = gets.chomp
  raise CLI::UI.fmt '{{red:O campo novo contato não pode ser vazio. Tente novamente}}' if new_contact.empty?

  update_contact(new_contact,cpf)
  puts ''
  puts CLI::UI.fmt "{{bold:Sucesso}}{{v}}: Você alterou o CPF {{cyan:#{cpf}}} para o novo meio de contato {{cyan:#{new_contact}}}"

  raise CLI::UI.fmt '{{red: CPF não encontrado. Verifique o dado e tente novamente}}' if contact_index == []
end
