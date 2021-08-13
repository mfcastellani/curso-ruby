# 3. Main (ou outro nome)
# Efetivamente o que dispara a agenda e coloca em ordem as funções e visualizações dos programas anteriores)
# Preferencialmente ficar bem arquitetado para o usuário poder entrar, sair e acessar facilmente as funções da agenda

require_relative "functions.rb"

# popula a agenda com os contatos iniciais
populate

# Mensagem de boas vindas
welcome_msg

# Loop para iteração com usuário
loop do
  # Mostrar menu
  show_menu

  # Pegar a opção escolhida pelo usuário
  option = gets.chomp

  # Laço para realizar a operção de acordo com a opção selecionada pelo usuário
end