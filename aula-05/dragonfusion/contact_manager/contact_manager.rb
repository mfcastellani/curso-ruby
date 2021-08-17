require 'cli/ui'
require_relative './lib/contact'

loop do
  puts ''
  CLI::UI::Prompt.ask('O que você deseja fazer?') do |handler|
    handler.option('Consultar todos os registros') { listing_all_contacts }
    handler.option('Incluir uma pessoa na agenda') { new_contact }
    handler.option('Alterar dados de uma pessoa') { |selection| selection }
    handler.option('Excluir os dados de uma pessoa') { |selection| selection }
    handler.option('Sair') { exit_cm }
  end
rescue StandardError => e
  puts CLI::UI.fmt "⚠️ {{underline:Ocorreu um erro:}}#{e.message}"
end
