# Functions
# entrada de dados
# validar CPF, número de telefone ou email (bom escolher um desses dados para usarmos no programa)
# incluir dados
# alterar dados
# excluir dados
# consulta de dados para impressão

require 'cpf_cnpj'
require 'sqlite3'

# Criar banco de dados
@db = SQLite3::Database.new "projeto-agenda.db"

@rows = @db.execute <<-SQL
  create table if not exists contacts (
    name varchar(50),
    phone int,
    cpf int
  );
  SQL

# Método para inserir um contato na agenda (deve receber NOME, EMAIL/TELEFONE, CPF válido), verificar se o nome/cpf já esta cadastrado
def insert_name
  puts 'Insira o nome do contato:'
  @name = gets.chomp
end

def insert_phone
  puts 'Insira o telefone celular do contato com o DDD e sem usar - ou ( ).'
  phone_test = gets.chomp.to_i
  if phone_test.to_s.length == 11
    @phone = phone_test
  else
    puts 'Telefone inválido. Repita a operação'
    insert_phone
  end
  @phone
end

def insert_cpf
  puts 'Insira o CPF do contato'
  cpf_test = gets.chomp
  if CPF.valid? cpf_test
    @cpf = cpf_test
  else
    puts 'CPF inválido. Tente outra vez.'
    insert_cpf
  end
  @cpf
end

def create_contact
  name = insert_name
  cpf = insert_cpf
  phone = insert_phone
  # Execute inserts with parameter markers
  @db.execute("INSERT INTO contacts (name, phone, cpf) 
  VALUES (?, ?, ?)", [name, phone, cpf])
end

# Método para editar um contato na agenda (deve receber NOME, EMAIL/TELEFONE, CPF), localizar o contato pelo cpf e alterar os dados, 
# verificar se já existe contato com mesmo nome
def edit
  puts 'Digite o CPF do contato que deseja alterar e tecle ENTER:'
  cpf = gets.chomp.to_s

  if @contacts.any? { |item| item[:cpf] == cpf}
    @contacts.map { |item|
      puts 'Insira o novo nome ou deixe em branco para não alterar e tecle ENTER:'
      name = gets.chomp.to_s
      
      puts 'Insira o novo telefone ou deixe em branco para não alterar e tecle ENTER:'
      phone = gets.chomp
      
      item[:name] = name if not name.empty?
      
      item[:phone] = phone if not phone.empty?
      break  
    }
  else
    puts "Não foi possível localizar o contato com o CPF #{cpf}"
  end
end

# Método para deletar um contato na agenda (deve receber CPF)
def delete(cpf)
  if @contacts.any? { |item| item[:cpf] == cpf}
    @contacts.map { |item| 
      if item[:cpf] == cpf
        @contacts.delete(item)
        puts "Cpf #{cpf} excluído com sucesso."
        break
      end
    }
  else 
    puts "O Cpf #{cpf} não foi encontrado."
  end
end

# Método para consultar um contato na agenda (deve receber NOME ou EMAIL/TELEFONE ou CPF) e imprimir na tela os dados do contato
def view(search)
  result = @contacts.select do |item|
     item[:name] == search ||
     item[:phone] == search ||
     item[:cpf] == search
  end
  result.each do |r|
    puts "Nome: #{r[:name]} - Telefone: #{r[:phone]} - Cpf: #{r[:cpf]}"
  end 
end

# Método para listar todos os contatos da agenda, imprimir todos os contatos na tela de maneira organizada e formatada
def list
  @db.execute( "select * from contacts" ) do |row|
    p row
  end
end

# Método para popular inicialmente contatos na agenda, criar um hash e popular com dados de alguns contatos para que a agenda não inicie vazia
def populate
  @db.execute("INSERT INTO contacts (name, phone, cpf) 
            VALUES (?, ?, ?)", [ "Abraão", 74405489739 , 36851738120])
end
