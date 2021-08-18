# 2. Visual (ou outro nome em inglês, seguindo o que Marcelo pediu)
# Menu
# Textos de entrada e saída
# Impressões dos dados (os dois usando gems legais, como foi sugerido na aula)
# Demais ideias que envolvam o aspecto visual do programa

# Método para exibir mensagem de boas vindas. 
# Talvez o local correto para este método seja no visual.rb
require 'tty-box'
require 'tty-font'
require 'cli/ui'
require_relative "functions.rb"

def welcome_msg
    font = TTY::Font.new(:doom)
    box  = TTY::Box.frame "#{font.write("    AGENDA    ")}", " ", " ","2021", padding: 2, align: :center,
        border: :thick, 
        title: {top_left: " PROJETO AGENDA ", bottom_right: " v1.0 "},
        style: {
          fg: :yellow, 
          bg: :black,
          border: { 
            fg: :yellow, 
            bg: :black
            }
          }
    print box
end

#Método para mostar o menu e suas opções(Innserir, Alterar, Excluir, Consultar, Listar Todos e Sair) (formato e visualmente elegante)
# Talvez o local correto para este método seja no visual.rb
def show_menu
    loop do
        CLI::UI::Prompt.ask('OPÇÕES:') do |handler|
          handler.option('Adicionar contato') { |selection| create_contact }   #Colocar aqui as funções correspondentes
          handler.option('Alterar contato')   { |selection| edit      }   #Colocar aqui as funções correspondentes
          handler.option('Excluir contato')   { |selection| selection }   #Colocar aqui as funções correspondentes
          handler.option('Lista de contatos') { |selection| list      }   #Colocar aqui as funções correspondentes como neste exemplo
          handler.option('Sair')              { |selection| exit(0)   }   #Encerra a agenda
        end
      end
end
