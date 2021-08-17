require 'cli/ui'
require 'tty-box'
require_relative './lib/contact'

box = TTY::Box.frame(width: 80, height: 4, align: :center, padding: 1) do
  'Contact Manager'
end

print box

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
