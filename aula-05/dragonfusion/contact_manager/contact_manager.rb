require 'cli/ui'
require_relative './lib/contact'

puts "\e[H\e[2J"

loop do 
  puts '*** RUBY CONTACT MANAGER ***'
  CLI::UI::Prompt.ask('O que você deseja fazer?') do |handler|
    handler.option('Buscar um contato') { |selection| selection }
    handler.option('Incluir um contato') { |_selection| new_contact }
    handler.option('Modificar um contato') { |selection| selection }
    handler.option('Excluir um contato') { |selection| selection }
    handler.option('Exibir todos os contatos') { |_selection| listing_all_contacts }
    handler.option('Sair') { |_selection| exit_cm }
  end
rescue StandardError => e
  puts "Ocorreu um erro: #{e.message}"
end
