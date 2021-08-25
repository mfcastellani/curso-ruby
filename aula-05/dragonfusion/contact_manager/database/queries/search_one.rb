require_relative '../connection_db'

def search_one_by_cpf
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o CPF da pessoa que deseja consultar:}}'
  cpf = cpf_valid
  puts ''
  puts CLI::UI.fmt '{{bold:Listando o contato selecionado:}}'
  puts ''

  db.execute('select name, means_contact, cpf from contacts where cpf=? ', cpf) do |row|
    puts CLI::UI.fmt "{{v}} Os dados da pessoa {{green:#{row[0]}}} são: contato {{green:#{row[1]}}} e CPF {{green:#{row[2]}}}."
    # puts "Os dados da pessoa #{row[0]} são contato #{row[1]} e CPF #{row[2]}."
  end
end

def search_one_by_name
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o nome da pessoa que deseja consultar:}}'
  name = gets.chomp

  raise ' Campo nome vazio. tente de novo' if name.empty?

  puts ''
  puts CLI::UI.fmt '{{bold:Listando o contato selecionado:}}'
  puts ''

  db.execute("select name, means_contact, cpf from contacts where name like '%#{name}%'") do |row|
    puts CLI::UI.fmt "{{v}} Os dados da pessoa {{green:#{row[0]}}} são: contato {{green:#{row[1]}}} e CPF {{green:#{row[2]}}}."
    # puts "Os dados da pessoa #{row[0]} são contato #{row[1]} e CPF #{row[2]}."
  end
end

def search_one_by_means_contact
  puts ''
  puts CLI::UI.fmt '{{bold:Digite o e-mail ou telefone da pessoa que deseja consultar:}}'
  means_contact = gets.chomp

  raise ' Campo e-mail ou telefone vazio. tente de novo' if means_contact.empty?

  puts ''
  puts CLI::UI.fmt '{{bold:Listando o contato selecionado:}}'
  puts ''

  db.execute("select name, means_contact, cpf from contacts where means_contact like '%#{means_contact}%'") do |row|
    puts CLI::UI.fmt "{{v}} Os dados da pessoa {{green:#{row[0]}}} são: contato {{green:#{row[1]}}} e CPF {{green:#{row[2]}}}."
    # puts "Os dados da pessoa #{row[0]} são contato #{row[1]} e CPF #{row[2]}."
  end
end

# ultarearch_one_by_cpf('182.953.243-06')
