# Functions
# entrada de dados
# validar CPF, número de telefone ou email (bom escolher um desses dados para usarmos no programa)
# incluir dados
# alterar dados
# excluir dados
# consulta de dados para impressão

require 'cpf_cnpj'

# Criar hash para armazenar dados da agenda

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
    cpf_test['-'] = ''
    @cpf = cpf_test
  else
    puts 'CPF inválido. Tente outra vez.'
    insert_cpf
  end
  @cpf
end

# Método para editar um contato na agenda (deve receber NOME, EMAIL/TELEFONE, CPF), localizar o contato pelo cpf e alterar os dados, 
# verificar se já existe contato com mesmo nome
def edit(name, contact, cpf)

end

# Método para deletar um contato na agenda (deve receber CPF)
def delete(cpf)
  if  @contacts.any? { |item| item[:cpf] == cpf}
    @contacts.map { |item| 
      @contacts.delete(item)
      puts "Cpf #{cpf} excluído com sucesso."
      break
    }
  else 
    puts "Não foi possível excluir o Cpf #{cpf}"
  end
end


# Método para consultar um contato na agenda (deve receber NOME ou EMAIL/TELEFONE ou CPF) e imprimir na tela os dados do contato
def view(text_search)

end

# Método para listar todos os contatos da agenda, imprimir todos os contatos na tela de maneira organizada e formatada
def list
  @contacts.map { |item| item }
   puts "Nome: #{@name} - Telefone: #{@phone} - Cpf: #{@cpf}"
end

# Método para popular inicialmente contatos na agenda, criar um hash e popular com dados de alguns contatos para que a agenda não inicie vazia
def populate
  @contacts = [ {:name => "Abraão", :phone => 74405489739, :cpf => 36851738120}, 
                {:name => "Ana Paula", :phone => 75634079546, :cpf => 83187351964},
                {:name => "Breno", :phone => 47453162390, :cpf => 42220667456},
                {:name => "Bruno", :phone => 87643647953, :cpf => 15848746192}, 
                {:name => "Caio", :phone => 78837768607, :cpf => 63736749406},
                {:name => "Douglas", :phone => 70278044476, :cpf => 87156691570},
                {:name => "Franco", :phone => 34147502570, :cpf => 35310255460}, 
                {:name => "João Gilberto", :phone => 34490740864, :cpf => 21539588300},
                {:name => "João Príscio", :phone => 63388057906, :cpf => 23668275807},
                {:name => "Marcelo", :phone => 87393903012, :cpf => 34693122068}
  ]
end
