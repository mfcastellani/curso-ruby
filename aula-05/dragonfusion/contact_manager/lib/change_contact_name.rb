def change_contact_name_by_cpf
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o número do CPF do contato que deseja alterar o nome:}}'
  cpf = cpf_valid

  e = @address_book.index
  contact_index = e.each { |contact| contact[:cpf] == cpf }
  puts CLI::UI.fmt "{{bold:Digite o novo nome para o CPF:}}{{green:#{cpf}}}"
  new_name = gets.chomp
  raise CLI::UI.fmt '{{red: O campo novo nome não pode ser vazio. Tente novamente.}}' if new_name.empty?

  b = { name: new_name }
  c = @address_book[contact_index].merge!(b)
  puts ''
  puts CLI::UI.fmt "{{bold:Sucesso}}{{v}}: Você alterou o CPF {{cyan:#{c[:cpf]}}} para o nome {{cyan:#{c[:name]}}}"

  raise CLI::UI.fmt '{{red: CPF não encontrado. Verifique o dado e tente novamente}}' if contact_index = nil?
end
