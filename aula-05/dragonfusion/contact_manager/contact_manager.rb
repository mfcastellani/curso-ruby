require 'cli/ui'
require_relative './lib/contact'

loop do
  CLI::UI::Prompt.ask('O que você deseja fazer?') do |handler|
    handler.option('Consultar todos os registros') { |_selection| listing_all_contacts }
    handler.option('Incluir uma pessoa na agenda') { |_selection| new_contact }
    handler.option('Alterar dados de uma pessoa') { |selection| selection }
    handler.option('Excluir os dados de uma pessoa') { |selection| selection }
    handler.option('Sair') { |_selection| exit_cm }
  end
rescue StandardError => e
  puts "Ocorreu um erro: #{e.message}"
end
