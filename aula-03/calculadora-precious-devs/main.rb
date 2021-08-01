require_relative "./lib/metodos_calc.rb"

apresentacao

loop do
  mostrar_menu
  operacao_escolhida = gets.chomp

  unless ['1', '2', '3', '4', '+', '-', '*', '/'].include?(operacao_escolhida) 
    puts '------------------------------------'
    puts 'Você escolheu sair do programa.'
    puts 'Obrigado por usar a calculadora do grupo Precious Developers. Tchau!'
    exit
  end

  resultado_calculo = executar_calculo operacao_escolhida

  mostrar_resultado resultado_calculo, operacao_escolhida
  
  repetir_calculo
end
