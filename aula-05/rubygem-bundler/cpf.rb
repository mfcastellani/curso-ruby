require 'cpf_cnpj'

cpf = CPF.generate

puts cpf
puts CPF.valid? cpf