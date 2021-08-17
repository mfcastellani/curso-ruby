class change_contact
  
def change_contact_name
  puts CLI::UI.fmt "{{bold:Digite o novo nome para o CPF:}}{{green:#{cpf}}}"
  new_name = gets.chomp
  b = { name: new_name }
  c = @address_book[contact_index].merge!(b)

  
end
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o número do CPF do contato que deseja alterar:}}'
  cpf = cpf_valid
  # cpf_exist = @address_book.any? { |contact| contact[:cpf] == cpf }
  e = @address_book.index
  contact_index = e.each { |contact| contact[:cpf] == cpf }
  puts CLI::UI.fmt "{{bold:Digite o novo contato para o CPF:}}{{green:#{cpf}}}"
  new_contact = gets.chomp
  # e = @address_book.each_index
  # a = e.each { |index| puts "#{index} #{@address_book[index]}" }
  b = { name: new_name, contact: new_contact }
  c = @address_book[contact_index].merge!(b)
  puts c
  # puts CLI::UI.fmt "{{bold:Nome: }}{{cyan:#{contact[:name]} }}{{bold:|}} {{bold:Contato: }}{{cyan:#{contact[:contact]} }}{{bold:|}} {{bold:CPF: }}{{cyan:#{contact[:cpf]}}}"
  raise CLI::UI.fmt '{{red: CPF não encontrado. Verifique o dado e tente novamente}}' if contact_index = nil?
end
