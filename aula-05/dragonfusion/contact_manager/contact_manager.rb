require 'cli/ui'
require 'tty-box'
require_relative './lib/contact'

box = TTY::Box.frame(width: 85, height: 4, align: :center, padding: 1) do
  'Contact Manager'
end

print box

loop do
  puts ''
  CLI::UI::Prompt.ask('Escolha qual ação quer realizar na agenda 👇') do |handler|
    handler.option('Incluir uma pessoa') { new_contact }
    handler.option('Consultar todos os registros') { listing_all_contacts }
    handler.option('Alterar apenas o nome de uma pessoa') { change_contact_name }
    handler.option('Alterar apenas o meio de contato de uma pessoa') { change_form_contact }
    handler.option('Alterar nome e contato de uma pessoa') { change_contact }
    handler.option('Excluir os dados de uma pessoa') { delete_contact }
    handler.option('Sair') { exit_cm }
  end
rescue StandardError => e
  puts CLI::UI.fmt "⚠️ {{underline:Ocorreu um erro:}}#{e.message}"
end
