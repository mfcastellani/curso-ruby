require 'cli/ui'
require_relative './lib/contact'

loop do
  CLI::UI::Prompt.ask('O que você deseja fazer?') do |handler|
    handler.option('Consultar um CPF') { |selection| selection }
    handler.option('Incluir uma pessoa na agenda') { |_selection| new_person }
    handler.option('Alterar dados de uma pessoa') { |selection| selection }
    handler.option('Excluir os dados de uma pessoa') { |selection| selection }
    handler.option('Sair') { |selection| selection }
  end
end
