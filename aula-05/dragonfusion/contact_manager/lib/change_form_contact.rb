def change_form_contact_by_cpf
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o número do CPF da pessoa que você precisa alterar o meio contato:}}'
  cpf = cpf_valid

  e = @address_book.index
  contact_index = e.each { |contact| contact[:cpf] == cpf }

  puts CLI::UI.fmt "{{bold:Digite o novo contato para o CPF: }}{{green:#{cpf}}}"
  new_contact = gets.chomp
  raise CLI::UI.fmt '{{red:O campo novo contato não pode ser vazio. Tente novamente}}' if new_contact.empty?

  b = { contact: new_contact }
  c = @address_book[contact_index].merge!(b)
  puts ''
  puts CLI::UI.fmt "{{bold:Sucesso}}{{v}}: Você alterou o CPF {{cyan:#{c[:cpf]}}} para o novo meio de contato {{cyan:#{c[:contact]}}}"

  raise CLI::UI.fmt '{{red: CPF não encontrado. Verifique o dado e tente novamente}}' if contact_index = nil?
end
