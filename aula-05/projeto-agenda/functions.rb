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
def insert(name, contact, cpf)

end

# Método para editar um contato na agenda (deve receber NOME, EMAIL/TELEFONE, CPF), localizar o contato pelo cpf e alterar os dados, 
# verificar se já existe contato com mesmo nome
def edit(name, contact, cpf)

end

#Método para deletar um contato na agenda (deve receber CPF)
def delete(cpf)

end

#Método para consultar um contato na agenda (deve receber NOME ou EMAIL/TELEFONE ou CPF) e imprimir na tela os dados do contato
def view(text_search)

end

#Método para listar todos os contatos da agenda, imprimir todos os contatos na tela de maneira organizada e formatada
def list

end

#Método para popular inicialmente contatos na agenda, criar um hash e popular com dados de alguns contatos para que a agenda não inicie vazia
def populate

end