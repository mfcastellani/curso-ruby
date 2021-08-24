def delete_contact_by_cpf
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o número do CPF do contato que deseja excluir:}}'
  cpf = cpf_valid
  puts ''
  puts CLI::UI.fmt '{{bold: Deletando contato...}}'
  e = @address_book.index
  contact_index = e.each { |contact| contact[:cpf] == cpf }
  @address_book.delete_at(contact_index)
  puts ''
  puts CLI::UI.fmt '{{bold:Sucesso}}{{v}}: Você deletou o contato.}}'

  raise CLI::UI.fmt '{{red: CPF não encontrado. Verifique o dado e tente novamente}}' if contact_index = nil?
end
