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

# Método para editar um contato na agenda (deve receber NOME, EMAIL/TELEFONE, CPF), localizar o contato pelo cpf e alterar os dados
# verificar se já existe contato com mesmo nome
def edit
	print "Digite o CPF do contato que deseja editar: "
		cpf = gets.chomp
  
	contatos = @db.execute( "SELECT * from contacts WHERE cpf = ? ", [cpf])
	if contatos.empty? 
		puts "O Cpf #{cpf} não foi encontrado."
	else contatos.each { |contato| p "#{contato[0]}  -  #{contato[1]}  -  #{contato[2]}" }
  puts ""
	end

	print "Digite o novo nome para o contato: "
		nome = gets.chomp

 
	print "Digite o novo telefone para o contato: "
		telefone = gets.chomp
 
  @db.execute("UPDATE contacts SET name =? , phone = ? WHERE cpf = ?", [nome, telefone, cpf])
  puts "Os dados do contato foram atualizados."	
end

# Método para deletar um contato na agenda (deve receber CPF)
def delete
  print "Digite o CPF do contato que deseja excluir: "
  cpf = gets.chomp
  
  if @db.execute( "select * from contacts where cpf = ? ", [cpf]).empty?
    puts "O Cpf #{cpf} não foi encontrado."
  else
    @db.execute( "delete from contacts where cpf = ? ", [cpf])
    puts "Contato excluido com sucesso !"
  end
end

# Método para consultar um contato na agenda (deve receber NOME ou EMAIL/TELEFONE ou CPF) e imprimir na tela os dados do contato
def view
  puts "Insira o CPF do contato que deseja consultar:"
  search_contact = gets.chomp

  @db.query("SELECT name, phone, cpf FROM contacts WHERE cpf =?", [search_contact]) do |search|
    puts ''
    p search.first
    puts ''
  end
end

# Método para listar todos os contatos da agenda, imprimir todos os contatos na tela de maneira organizada e formatada
def list
  p '[Nome]      -   [Telefone]      -  [CPF]'
@db.execute( "select * from contacts" ) do |row|
  p "#{row[0]}  -  #{row[1]}  -  #{row[2]}"
end
end

# Método para popular inicialmente contatos na agenda, criar um hash e popular com dados de alguns contatos para que a agenda não inicie vazia
def populate
  seed_data = [["Abraão", 74405489739, 36851738120],
               ["Ana Paula",75634079546, 83187351964 ],
               ["Bruno", 47453162390, 42220667456],
               ["Caio", 78837768607,63736749406 ],
               ["Douglas",70278044476, 87156691570 ],
               ["Franco", 34147502570, 35310255460],
               ["João Gilberto", 34490740864, 21539588300],
               ["Marcelo", 87393903012, 34693122068]]

  if @db.execute( "select * from contacts" ).empty?
    seed_data.each do |data|
      @db.execute "INSERT INTO contacts VALUES ( ?, ?, ?)", data
    end
  end

end
