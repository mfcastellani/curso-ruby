require 'cpf_cnpj'
require 'cli/ui'

def cpf_valid
  number = gets.chomp
  cpf = CPF.new(number)
  raise CLI::UI.fmt '{{red: CPF inválido. Verifique o dado e tente novamente}}' if cpf.valid? != true

  cpf.formatted
end
